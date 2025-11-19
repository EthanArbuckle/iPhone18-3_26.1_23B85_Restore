uint64_t closure #1 in AADBatteryInfoVM._overrideDeviceForDebug()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 240) = a5;
  *(v5 + 232) = a4;
  *(v5 + 184) = v5;
  *(v5 + 192) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 200) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 208) = 0;
  *(v5 + 216) = 0;
  v6 = type metadata accessor for ContinuousClock();
  *(v5 + 248) = v6;
  v11 = *(v6 - 8);
  *(v5 + 256) = v11;
  v7 = *(v11 + 64) + 15;
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 192) = a4;
  type metadata accessor for MainActor();
  *(v5 + 272) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 280) = v13;
  *(v5 + 288) = v8;
  v9 = *(v5 + 184);

  return MEMORY[0x1EEE6DFA0](closure #1 in AADBatteryInfoVM._overrideDeviceForDebug(), v13);
}

uint64_t closure #1 in AADBatteryInfoVM._overrideDeviceForDebug()()
{
  v1 = v0[29];
  v0[23] = v0;
  AADBatteryInfoVM._debugOverrideAnimating.setter(1);
  v0[13] = 0;
  v0[14] = 9;
  v0[37] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
  v0[38] = lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>();
  Collection<>.makeIterator()();
  do
  {
    *(v25 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNySiGGMd, &_ss16IndexingIteratorVySNySiGGMR);
    IndexingIterator.next()();
    v24 = *(v25 + 152);
    *(v25 + 320) = v24;
    if (*(v25 + 160))
    {
      v22 = *(v25 + 272);
      v23 = *(v25 + 264);
      v2 = *(v25 + 232);
      AADBatteryInfoVM._debugOverrideAnimating.setter(0);

      v3 = *(*(v25 + 184) + 8);
      v4 = *(v25 + 184);

      return v3();
    }

    v6 = *(v25 + 304);
    v7 = *(v25 + 296);
    *(v25 + 200) = v24;
    *(v25 + 120) = 0;
    *(v25 + 128) = 5;
    Collection<>.makeIterator()();
    v8 = *(v25 + 312);
    result = IndexingIterator.next()();
    v21 = *(v25 + 168);
  }

  while ((*(v25 + 176) & 1) != 0);
  *(v25 + 208) = v21;
  v20 = 10 * v21;
  if ((v21 * 10) >> 64 != (10 * v21) >> 63)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v9 = *(v25 + 320);
  if (__OFADD__(v20, v9))
  {
    goto LABEL_16;
  }

  v17 = *(v25 + 264);
  v18 = *(v25 + 248);
  v11 = *(v25 + 240);
  v12 = *(v25 + 232);
  *(v25 + 216) = v20 + v9;
  show #1 (_:) in AADBatteryInfoVM._overrideDeviceForDebug()();
  *(v25 + 224) = 700;
  lazy protocol witness table accessor for type Int and conformance Int();
  *(v25 + 136) = static Duration.milliseconds<A>(_:)();
  *(v25 + 144) = v13;
  *(v25 + 80) = 0;
  *(v25 + 88) = 0;
  *(v25 + 96) = 1;
  v19 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock();
  default argument 2 of static Task<>.sleep<A>(for:tolerance:clock:)();
  v14 = swift_task_alloc();
  *(v25 + 328) = v14;
  *v14 = *(v25 + 184);
  v14[1] = closure #1 in AADBatteryInfoVM._overrideDeviceForDebug();
  v15 = *(v25 + 264);
  v16 = *(v25 + 248);

  return static Task<>.sleep<A>(for:tolerance:clock:)(v25 + 136, v25 + 80, v15, v16, v19);
}

{
  v10 = *v1;
  v2 = *(*v1 + 328);
  v10[23] = *v1;
  v11 = v10 + 23;
  v10[42] = v0;

  if (v0)
  {
    v7 = *v11;
    v8 = v10[36];
    v5 = v10[35];
    v6 = closure #1 in AADBatteryInfoVM._overrideDeviceForDebug();
  }

  else
  {
    (*(v10[32] + 8))(v10[33], v10[31]);
    v3 = *v11;
    v4 = v10[36];
    v5 = v10[35];
    v6 = closure #1 in AADBatteryInfoVM._overrideDeviceForDebug();
  }

  return MEMORY[0x1EEE6DFA0](v6, v5);
}

{
  *(v0 + 184) = v0;
  while (1)
  {
    v7 = *(v24 + 312);
    result = IndexingIterator.next()();
    v20 = *(v24 + 168);
    if ((*(v24 + 176) & 1) == 0)
    {
      break;
    }

    *(v24 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySNySiGGMd, &_ss16IndexingIteratorVySNySiGGMR);
    IndexingIterator.next()();
    v21 = *(v24 + 152);
    *(v24 + 320) = v21;
    if (*(v24 + 160))
    {
      v22 = *(v24 + 272);
      v23 = *(v24 + 264);
      v1 = *(v24 + 232);
      AADBatteryInfoVM._debugOverrideAnimating.setter(0);

      v2 = *(*(v24 + 184) + 8);
      v3 = *(v24 + 184);

      return v2();
    }

    v5 = *(v24 + 304);
    v6 = *(v24 + 296);
    *(v24 + 200) = v21;
    *(v24 + 120) = 0;
    *(v24 + 128) = 5;
    Collection<>.makeIterator()();
  }

  *(v24 + 208) = v20;
  v19 = 10 * v20;
  if ((v20 * 10) >> 64 != (10 * v20) >> 63)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v8 = *(v24 + 320);
  if (__OFADD__(v19, v8))
  {
    goto LABEL_17;
  }

  v16 = *(v24 + 264);
  v17 = *(v24 + 248);
  v10 = *(v24 + 240);
  v11 = *(v24 + 232);
  *(v24 + 216) = v19 + v8;
  show #1 (_:) in AADBatteryInfoVM._overrideDeviceForDebug()();
  *(v24 + 224) = 700;
  lazy protocol witness table accessor for type Int and conformance Int();
  *(v24 + 136) = static Duration.milliseconds<A>(_:)();
  *(v24 + 144) = v12;
  *(v24 + 80) = 0;
  *(v24 + 88) = 0;
  *(v24 + 96) = 1;
  v18 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock();
  default argument 2 of static Task<>.sleep<A>(for:tolerance:clock:)();
  v13 = swift_task_alloc();
  *(v24 + 328) = v13;
  *v13 = *(v24 + 184);
  v13[1] = closure #1 in AADBatteryInfoVM._overrideDeviceForDebug();
  v14 = *(v24 + 264);
  v15 = *(v24 + 248);

  return static Task<>.sleep<A>(for:tolerance:clock:)(v24 + 136, v24 + 80, v14, v15, v18);
}

{
  v5 = v0[42];
  v1 = v0[33];
  v2 = v0[32];
  v3 = v0[31];
  v0[23] = v0;
  (*(v2 + 8))(v1, v3);
  return swift_unexpectedError();
}

uint64_t static Task<>.sleep<A>(for:tolerance:clock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = static Task<>.sleep<A>(for:tolerance:clock:);

  return Clock.sleep(for:tolerance:)(a1, a2, a4, a5);
}

uint64_t static Task<>.sleep<A>(for:tolerance:clock:)()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(v2 + 16) = *v1;
  v6 = v2 + 16;

  if (v0)
  {
    v4 = *(*v6 + 8);
  }

  else
  {
    v4 = *(*v6 + 8);
  }

  return v4();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a1;
  v47 = a2;
  v55 = a3;
  v56 = a4;
  v57 = a5;
  v48 = a6;
  v49 = "Fatal error";
  v50 = "Unexpectedly found nil while unwrapping an Optional value";
  v51 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v52 = &_sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTATu;
  v53 = 0;
  v66 = a6;
  v54 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v15 - v54;

  v64 = v56;
  v65 = v57;
  outlined init with copy of TaskPriority?(v55, v58);
  v59 = type metadata accessor for TaskPriority();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  if ((*(v60 + 48))(v58, 1) == 1)
  {
    outlined destroy of TaskPriority?(v58);
    v45 = 0;
  }

  else
  {
    v44 = TaskPriority.rawValue.getter();
    (*(v60 + 8))(v58, v59);
    v45 = v44;
  }

  v41 = v45 | 0x1C00;
  v43 = *(v57 + 16);
  v42 = *(v57 + 24);
  swift_unknownObjectRetain();

  if (v43)
  {
    v39 = v43;
    v40 = v42;
    v33 = v42;
    v34 = v43;
    swift_getObjectType();
    v35 = dispatch thunk of Actor.unownedExecutor.getter();
    v36 = v6;
    swift_unknownObjectRelease();
    v37 = v35;
    v38 = v36;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v31 = v38;
  v32 = v37;

  if (v47)
  {
    v29 = v46;
    v30 = v47;
    v7 = v53;
    v26 = v47;
    v27 = String.utf8CString.getter();

    v8 = *(v27 + 16);
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfcBoSRys4Int8VGXEfU_(v27 + 32, &v64, v48, &v62);
    if (v7)
    {
      __break(1u);
    }

    v25 = v62;

    v28 = v25;
  }

  else
  {
    v28 = 0;
  }

  v24 = v28;
  if (v28)
  {
    v18 = v24;
    v17 = v24;
    outlined destroy of TaskPriority?(v55);

    v19 = v17;
  }

  else
  {

    outlined destroy of TaskPriority?(v55);
    v20 = v64;
    v21 = v65;

    v9 = swift_allocObject();
    v10 = v20;
    v11 = v21;
    v12 = v32;
    v13 = v31;
    v22 = v9;
    v9[2] = v48;
    v9[3] = v10;
    v9[4] = v11;
    v23 = 0;
    if (v12 != 0 || v13 != 0)
    {
      v63[0] = 0;
      v63[1] = 0;
      v63[2] = v32;
      v63[3] = v31;
      v23 = v63;
    }

    v19 = swift_task_create();
  }

  v16 = v19;

  return v16;
}

uint64_t AADBatteryInfoVM.deinit()
{
  v2 = OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryCase;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo9AABatteryCGMd, &_s7Combine9PublishedVySo9AABatteryCGMR);
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2);
  (v4)(v0 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryLeft, v3);
  (v4)(v0 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryRight, v3);
  (v4)(v0 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryMain, v3);
  (v4)(v0 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM__batteryCombinedLeftRight, v3);
  outlined destroy of String(v0 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM_bluetoothAddress);
  outlined destroy of AADeviceBatteryInfo?((v0 + OBJC_IVAR____TtC16HeadphoneManager16AADBatteryInfoVM_underlyingBatteryInfo));
  return v5;
}

uint64_t AADBatteryInfoVM.__deallocating_deinit()
{
  v0 = *AADBatteryInfoVM.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance AADBatteryInfoVM@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AADBatteryInfoVM();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance AABatteryType(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  AABatteryType.init(rawValue:)();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AABatteryType(void *a1@<X8>)
{
  v2 = *v1;
  AABatteryType.rawValue.getter();
  *a1 = v3;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfcBoSRys4Int8VGXEfU_@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = *a2;
  v6 = a2[1];

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v5;
  v7[4] = v6;
  result = swift_task_create();
  *a4 = result;
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR(uint64_t a1, int *a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v7 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTQ0_()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = v4;
  v5[6] = a4;
  v5[5] = a3;
  v5[4] = a2;
  v5[3] = a1;
  v5[2] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[8] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v5[9] = v9;
  v10 = *(v9 + 64);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v7 = v5[2];

  return MEMORY[0x1EEE6DFA0](Clock.sleep(for:tolerance:), 0);
}

uint64_t Clock.sleep(for:tolerance:)()
{
  v13 = v0[11];
  v16 = v0[10];
  v15 = v0[9];
  v17 = v0[8];
  v1 = v0[7];
  v11 = v0[6];
  v12 = v0[5];
  v14 = v0[3];
  v0[2] = v0;
  dispatch thunk of Clock.now.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of InstantProtocol.advanced(by:)();
  v2 = *(v15 + 8);
  v0[12] = v2;
  v0[13] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v16, v17);
  v3 = *(MEMORY[0x1E69E8938] + 4);
  v4 = swift_task_alloc();
  v18[14] = v4;
  *v4 = v18[2];
  v4[1] = Clock.sleep(for:tolerance:);
  v5 = v18[11];
  v6 = v18[7];
  v7 = v18[6];
  v8 = v18[5];
  v9 = v18[4];

  return MEMORY[0x1EEE6DE58](v5, v9, v8, v7);
}

{
  v11 = *v1;
  v2 = *(*v1 + 112);
  *(v11 + 16) = *v1;
  v12 = (v11 + 16);
  *(v11 + 120) = v0;

  if (v0)
  {
    v3 = *(v11 + 104);
    (*(v11 + 96))(*(v11 + 88), *(v11 + 64));
    v4 = *v12;

    return MEMORY[0x1EEE6DFA0](Clock.sleep(for:tolerance:), 0);
  }

  else
  {
    v5 = *(v11 + 104);
    v9 = *(v11 + 88);
    v10 = *(v11 + 80);
    v6 = *(v11 + 64);
    (*(v11 + 96))();

    v7 = *(*v12 + 8);

    return v7();
  }
}

{
  v1 = v0[11];
  v7 = v0[10];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[15];

  return v3();
}

uint64_t partial apply for closure #1 in AADBatteryInfoVM._overrideDeviceForDebug()(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = partial apply for closure #1 in AADBatteryInfoVM._overrideDeviceForDebug();

  return closure #1 in AADBatteryInfoVM._overrideDeviceForDebug()(a1, v6, v7, v8, v9);
}

uint64_t partial apply for closure #1 in AADBatteryInfoVM._overrideDeviceForDebug()()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t type metadata accessor for AABatteryType()
{
  v4 = lazy cache variable for type metadata for AABatteryType;
  if (!lazy cache variable for type metadata for AABatteryType)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AABatteryType);
      return v1;
    }
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type AABatteryType and conformance AABatteryType()
{
  v2 = lazy protocol witness table cache variable for type AABatteryType and conformance AABatteryType;
  if (!lazy protocol witness table cache variable for type AABatteryType and conformance AABatteryType)
  {
    type metadata accessor for AABatteryType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AABatteryType and conformance AABatteryType);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AABatteryType and conformance AABatteryType;
  if (!lazy protocol witness table cache variable for type AABatteryType and conformance AABatteryType)
  {
    type metadata accessor for AABatteryType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AABatteryType and conformance AABatteryType);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for AABatteryState()
{
  v4 = lazy cache variable for type metadata for AABatteryState;
  if (!lazy cache variable for type metadata for AABatteryState)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AABatteryState);
      return v1;
    }
  }

  return v4;
}

void *outlined init with copy of AADeviceBatteryInfo?(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

void *outlined init with copy of TaskPriority?(const void *a1, void *a2)
{
  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v3 = type metadata accessor for TaskPriority();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR(a1, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTATQ0_()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA_54(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA_54TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR(a1, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA_54TQ0_()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

unint64_t lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>()
{
  v2 = lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSNySiGMd, &_sSNySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock()
{
  v2 = lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock;
  if (!lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock)
  {
    type metadata accessor for ContinuousClock();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock);
    return WitnessTable;
  }

  return v2;
}

const char *AudioAccessoryFeatures.domain.getter()
{
  result = "AudioAccessoryFeatures";
  v2 = *v0;
  return result;
}

const char *AudioAccessoryFeatures.feature.getter()
{
  v3 = *v0;
  if (!*v0)
  {
    return "ChargingReminders";
  }

  if (v3 == 1)
  {
    return "PauseMediaOnSleep";
  }

  if (v3 == 2)
  {
    return "ModernHeadphoneSettingsUI";
  }

  return "ImprovedSeedingUI";
}

HeadphoneManager::AudioAccessoryFeatures_optional __swiftcall AudioAccessoryFeatures.init(rawValue:)(Swift::String rawValue)
{
  v5 = v1;
  v2 = _allocateUninitializedArray<A>(_:)();
  *v3 = "ChargingReminders";
  *(v3 + 8) = 17;
  *(v3 + 16) = 2;
  *(v3 + 24) = "PauseMediaOnSleep";
  *(v3 + 32) = 17;
  *(v3 + 40) = 2;
  *(v3 + 48) = "ModernHeadphoneSettingsUI";
  *(v3 + 56) = 25;
  *(v3 + 64) = 2;
  *(v3 + 72) = "ImprovedSeedingUI";
  *(v3 + 80) = 17;
  *(v3 + 88) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v2, rawValue);

  if (v7)
  {
    switch(v7)
    {
      case 1:
        v8 = 1;
        break;
      case 2:
        v8 = 2;
        break;
      case 3:
        v8 = 3;
        break;
      default:

        *v5 = 4;
        return result;
    }
  }

  else
  {
    v8 = 0;
  }

  *v5 = v8;
}

uint64_t AudioAccessoryFeatures.rawValue.getter()
{
  v4 = *v0;
  if (!*v0)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ChargingReminders", 0x11uLL, 1)._countAndFlagsBits;
  }

  if (v4 == 1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PauseMediaOnSleep", 0x11uLL, 1)._countAndFlagsBits;
  }

  if (v4 == 2)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ModernHeadphoneSettingsUI", 0x19uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ImprovedSeedingUI", 0x11uLL, 1)._countAndFlagsBits;
  }
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AudioAccessoryFeatures@<X0>(uint64_t *a1@<X8>)
{
  result = AudioAccessoryFeatures.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

BOOL static HeadphoneFeatures.== infix(_:_:)(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t getEnumTagSinglePayload for AudioAccessoryFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AudioAccessoryFeatures(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeadphoneFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HeadphoneFeatures(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t one-time initialization function for binding()
{
  v1 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v1, static Logger.binding);
  __swift_project_value_buffer(v1, static Logger.binding);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.HeadphoneManager", 0x1AuLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Binding", 7uLL, 1);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.binding.unsafeMutableAddressor()
{
  if (one-time initialization token for binding != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static Logger.binding);
}

uint64_t static Logger.binding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = Logger.binding.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t static AADeviceProperty.subscript.getter@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = *(*a1 + *MEMORY[0x1E69E6F98]);
  v3 = *(*a1 + *MEMORY[0x1E69E6F98] + 8);
  swift_unknownObjectRetain();

  v5 = swift_readAtKeyPath();
  (*(*(v3 - 8) + 16))(a2);
  v5();
  swift_unknownObjectRelease();
}

uint64_t key path getter for static AADeviceProperty.subscript(_enclosingInstance:wrapped:storage:) : <A, B>AADeviceProperty<A, B>.TypeAB@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = a4;
  v8 = a2;
  v4 = (a2 + a3 - 32);
  v18 = *v4;
  v13 = v4[1];
  v17 = v13;
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v7 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v7 - v7;
  v16 = *v5;
  swift_unknownObjectRetain();
  v15 = *(v8 + 8);

  v14 = *(v8 + 16);

  static AADeviceProperty.subscript.getter(v15, v12);
  (*(v9 + 32))(v11, v12, v13);

  return swift_unknownObjectRelease();
}

uint64_t key path setter for static AADeviceProperty.subscript(_enclosingInstance:wrapped:storage:) : <A, B>AADeviceProperty<A, B>.TypeAB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v8 = a3;
  v4 = (a3 + a4 - 32);
  v18 = *v4;
  v12 = v4[1];
  v17 = v12;
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v7 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v7 - v7;
  v13 = *v5;
  swift_unknownObjectRetain();
  v14 = *(v8 + 8);

  v15 = *(v8 + 16);

  (*(v9 + 16))(v16, v11, v12);
  return static AADeviceProperty.subscript.setter(v16, v13, v14, v15);
}

uint64_t static AADeviceProperty.subscript.setter(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v718 = v744;
  v723 = a1;
  v706 = a2;
  v673 = a3;
  v710 = a4;
  v585 = implicit closure #1 in static AADeviceProperty.subscript.setter;
  v586 = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_9;
  v587 = implicit closure #2 in static AADeviceProperty.subscript.setter;
  v588 = _sSiIegd_SiIegr_TRTA_4;
  v589 = partial apply for implicit closure #3 in static AADeviceProperty.subscript.setter;
  v590 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v591 = partial apply for implicit closure #4 in static AADeviceProperty.subscript.setter;
  v592 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v593 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_9;
  v594 = closure #1 in OSLogArguments.append(_:)partial apply;
  v595 = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_9;
  v596 = closure #1 in OSLogArguments.append(_:)partial apply;
  v597 = closure #1 in OSLogArguments.append(_:)partial apply;
  v598 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_5;
  v599 = closure #1 in OSLogArguments.append(_:)partial apply;
  v600 = closure #1 in OSLogArguments.append(_:)partial apply;
  v601 = closure #1 in OSLogArguments.append(_:)partial apply;
  v602 = closure #1 in OSLogArguments.append(_:)partial apply;
  v603 = closure #1 in OSLogArguments.append(_:)partial apply;
  v604 = closure #1 in OSLogArguments.append(_:)partial apply;
  v605 = implicit closure #6 in static AADeviceProperty.subscript.setter;
  v606 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v607 = implicit closure #7 in static AADeviceProperty.subscript.setter;
  v608 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v609 = partial apply for implicit closure #8 in static AADeviceProperty.subscript.setter;
  v610 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v611 = partial apply for implicit closure #9 in static AADeviceProperty.subscript.setter;
  v612 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v613 = partial apply for implicit closure #10 in static AADeviceProperty.subscript.setter;
  v614 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v615 = closure #1 in OSLogArguments.append(_:)partial apply;
  v616 = closure #1 in OSLogArguments.append(_:)partial apply;
  v617 = closure #1 in OSLogArguments.append(_:)partial apply;
  v618 = closure #1 in OSLogArguments.append(_:)partial apply;
  v619 = closure #1 in OSLogArguments.append(_:)partial apply;
  v620 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v621 = closure #1 in OSLogArguments.append(_:)partial apply;
  v622 = closure #1 in OSLogArguments.append(_:)partial apply;
  v623 = closure #1 in OSLogArguments.append(_:)partial apply;
  v624 = closure #1 in OSLogArguments.append(_:)partial apply;
  v625 = closure #1 in OSLogArguments.append(_:)partial apply;
  v626 = closure #1 in OSLogArguments.append(_:)partial apply;
  v627 = closure #1 in OSLogArguments.append(_:)partial apply;
  v628 = closure #1 in OSLogArguments.append(_:)partial apply;
  v629 = closure #1 in OSLogArguments.append(_:)partial apply;
  v630 = implicit closure #15 in static AADeviceProperty.subscript.setter;
  v631 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v632 = implicit closure #16 in static AADeviceProperty.subscript.setter;
  v633 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v634 = partial apply for implicit closure #17 in static AADeviceProperty.subscript.setter;
  v635 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v636 = closure #1 in OSLogArguments.append(_:)partial apply;
  v637 = closure #1 in OSLogArguments.append(_:)partial apply;
  v638 = closure #1 in OSLogArguments.append(_:)partial apply;
  v639 = closure #1 in OSLogArguments.append(_:)partial apply;
  v640 = closure #1 in OSLogArguments.append(_:)partial apply;
  v641 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v642 = closure #1 in OSLogArguments.append(_:)partial apply;
  v643 = closure #1 in OSLogArguments.append(_:)partial apply;
  v644 = closure #1 in OSLogArguments.append(_:)partial apply;
  v645 = partial apply for closure #1 in static AADeviceProperty.subscript.setter;
  v646 = implicit closure #11 in static AADeviceProperty.subscript.setter;
  v647 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v648 = implicit closure #12 in static AADeviceProperty.subscript.setter;
  v649 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v650 = partial apply for implicit closure #13 in static AADeviceProperty.subscript.setter;
  v651 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v652 = partial apply for implicit closure #14 in static AADeviceProperty.subscript.setter;
  v653 = closure #1 in OSLogArguments.append(_:)partial apply;
  v654 = closure #1 in OSLogArguments.append(_:)partial apply;
  v655 = closure #1 in OSLogArguments.append(_:)partial apply;
  v656 = closure #1 in OSLogArguments.append(_:)partial apply;
  v657 = closure #1 in OSLogArguments.append(_:)partial apply;
  v658 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v659 = closure #1 in OSLogArguments.append(_:)partial apply;
  v660 = closure #1 in OSLogArguments.append(_:)partial apply;
  v661 = closure #1 in OSLogArguments.append(_:)partial apply;
  v662 = closure #1 in OSLogArguments.append(_:)partial apply;
  v663 = closure #1 in OSLogArguments.append(_:)partial apply;
  v664 = _s2os14OSLogArgumentsV6appendyySo8NSObjectCSgycFySpys5UInt8VGz_SpyAGGSgzSpyypGSgztcfU_TA_4;
  v768 = 0;
  v767 = 0;
  v766 = 0;
  v765 = 0;
  v764 = 0;
  v760[1] = 0;
  v760[2] = 0;
  v665 = 0;
  v749[2] = 0;
  v749[1] = 0;
  v745[1] = 0;
  v741 = 0;
  v666 = *a3;
  v4 = *a4;
  v690 = MEMORY[0x1E69E6F98];
  v719 = *(v4 + *MEMORY[0x1E69E6F98] + 8);
  v667 = *(v719 + 4);
  v668 = *(v667 + 8);
  v5 = *MEMORY[0x1E69E6F98];
  v712 = 0;
  v691 = v666;
  v669 = *(v666 + v5);
  v769 = v669;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v671 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v672 = v370 - v671;
  v674 = type metadata accessor for Logger();
  v675 = *(v674 - 8);
  v676 = v674 - 8;
  v682 = *(v675 + 64);
  v677 = (v682 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v706);
  v678 = v370 - v677;
  v679 = (v682 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v680 = v370 - v679;
  v681 = (v682 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v683 = v370 - v681;
  v684 = (v682 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v685 = v370 - v684;
  v687 = *(*(v719 - 1) + 64);
  v686 = (v687 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v688 = v370 - v686;
  v689 = (v687 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v707 = v370 - v689;
  v12 = *(v691 + *v690 + 8);
  v720 = v12;
  *(v13 + 360) = v12;
  v699 = *(v12 - 8);
  v700 = v12 - 8;
  v692 = v699;
  v696 = *(v699 + 64);
  v693 = (v696 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v694 = v370 - v693;
  v695 = (v696 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v697 = v370 - v695;
  v698 = (v696 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v17 = v723;
  v721 = v370 - v698;
  v18[44] = v370 - v698;
  v18[43] = v17;
  v18[42] = v16;
  v18[41] = v19;
  v18[40] = v20;
  swift_unknownObjectRetain();

  v718[39] = v706;
  v704 = &v763;
  v703 = swift_readAtKeyPath();
  v701 = *(v699 + 16);
  v702 = v699 + 16;
  v701(v721);
  v713 = 1;
  v703();
  v21 = v718[39];
  swift_unknownObjectRelease();

  v22 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v23 = v713;
  v24 = v718;
  v26 = v25;
  v27 = v712;
  v715 = &v762;
  v718[33] = v22;
  v24[34] = v26;
  v711 = "";
  v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v27, v23 & 1);
  object = v28._object;
  MEMORY[0x1DA7310D0](v28._countAndFlagsBits);

  swift_unknownObjectRetain();

  v718[32] = v706;
  swift_getAtKeyPath();
  v708 = *(v707 + v719[15]);

  outlined destroy of AADeviceProperty<A, B>(v707, v720, v719);
  v709 = &v761;
  v718[31] = v708;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14PartialKeyPathCy16HeadphoneManager13AADeviceModelVGMd, _ss14PartialKeyPathCy16HeadphoneManager13AADeviceModelVGMR);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v29 = v718[31];

  v30 = v718[32];
  swift_unknownObjectRelease();

  v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v711, v712, v713 & 1);
  v714 = v31._object;
  MEMORY[0x1DA7310D0](v31._countAndFlagsBits);

  v717 = v718[33];
  v716 = v718[34];

  outlined destroy of DefaultStringInterpolation(v715);
  v32 = MEMORY[0x1DA7309B0](v717, v716);
  v33 = v718;
  v34 = v719;
  v722 = v32;
  v724 = v35;
  v718[29] = v32;
  v33[30] = v35;
  v725 = *(v34 + 5);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v283 = v678;
    v284 = Logger.binding.unsafeMutableAddressor();
    (*(v675 + 16))(v283, v284, v674);

    v387 = 32;
    v388 = 7;
    v285 = swift_allocObject();
    v286 = v724;
    v287 = v723;
    v288 = v701;
    v289 = v720;
    v290 = v285;
    v291 = v697;
    v382 = v290;
    *(v290 + 16) = v722;
    *(v290 + 24) = v286;
    v288(v291, v287, v289);
    v379 = (*(v692 + 80) + 48) & ~*(v692 + 80);
    v292 = swift_allocObject();
    v293 = v667;
    v294 = v725;
    v295 = v379;
    v296 = v699;
    v297 = v697;
    v298 = v720;
    v389 = v292;
    v292[2] = v669;
    v292[3] = v298;
    v292[4] = v293;
    v292[5] = v294;
    (*(v296 + 32))(v292 + v295, v297);
    v406 = Logger.logObject.getter();
    v407 = static os_log_type_t.debug.getter();
    v385 = 17;
    v391 = swift_allocObject();
    v384 = 32;
    *(v391 + 16) = 32;
    v392 = swift_allocObject();
    v386 = 8;
    *(v392 + 16) = 8;
    v299 = swift_allocObject();
    v380 = v299;
    *(v299 + 16) = v585;
    *(v299 + 24) = 0;
    v300 = swift_allocObject();
    v301 = v380;
    v393 = v300;
    *(v300 + 16) = v586;
    *(v300 + 24) = v301;
    v394 = swift_allocObject();
    *(v394 + 16) = 0;
    v395 = swift_allocObject();
    *(v395 + 16) = v386;
    v302 = swift_allocObject();
    v381 = v302;
    *(v302 + 16) = v587;
    *(v302 + 24) = 0;
    v303 = swift_allocObject();
    v304 = v381;
    v396 = v303;
    *(v303 + 16) = v588;
    *(v303 + 24) = v304;
    v397 = swift_allocObject();
    *(v397 + 16) = v384;
    v398 = swift_allocObject();
    *(v398 + 16) = v386;
    v305 = swift_allocObject();
    v306 = v382;
    v383 = v305;
    *(v305 + 16) = v589;
    *(v305 + 24) = v306;
    v307 = swift_allocObject();
    v308 = v383;
    v399 = v307;
    *(v307 + 16) = v590;
    *(v307 + 24) = v308;
    v400 = swift_allocObject();
    *(v400 + 16) = v384;
    v401 = swift_allocObject();
    *(v401 + 16) = v386;
    v309 = swift_allocObject();
    v310 = v389;
    v390 = v309;
    *(v309 + 16) = v591;
    *(v309 + 24) = v310;
    v311 = swift_allocObject();
    v312 = v390;
    v403 = v311;
    *(v311 + 16) = v592;
    *(v311 + 24) = v312;
    v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v402 = _allocateUninitializedArray<A>(_:)();
    v404 = v313;

    v314 = v391;
    v315 = v404;
    *v404 = v593;
    v315[1] = v314;

    v316 = v392;
    v317 = v404;
    v404[2] = v594;
    v317[3] = v316;

    v318 = v393;
    v319 = v404;
    v404[4] = v595;
    v319[5] = v318;

    v320 = v394;
    v321 = v404;
    v404[6] = v596;
    v321[7] = v320;

    v322 = v395;
    v323 = v404;
    v404[8] = v597;
    v323[9] = v322;

    v324 = v396;
    v325 = v404;
    v404[10] = v598;
    v325[11] = v324;

    v326 = v397;
    v327 = v404;
    v404[12] = v599;
    v327[13] = v326;

    v328 = v398;
    v329 = v404;
    v404[14] = v600;
    v329[15] = v328;

    v330 = v399;
    v331 = v404;
    v404[16] = v601;
    v331[17] = v330;

    v332 = v400;
    v333 = v404;
    v404[18] = v602;
    v333[19] = v332;

    v334 = v401;
    v335 = v404;
    v404[20] = v603;
    v335[21] = v334;

    v336 = v403;
    v337 = v404;
    v404[22] = v604;
    v337[23] = v336;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v406, v407))
    {
      v338 = v665;
      v372 = static UnsafeMutablePointer.allocate(capacity:)();
      v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v373 = createStorage<A>(capacity:type:)(0);
      v339 = createStorage<A>(capacity:type:)(3);
      v340 = v373;
      v341 = v718;
      v374 = v339;
      v375 = v760;
      v718[28] = v372;
      v376 = v759;
      v341[27] = v340;
      v377 = v758;
      v341[26] = v339;
      serialize(_:at:)(2, v760);
      serialize(_:at:)(4, v375);
      v342 = v391;
      v343 = v718;
      v344 = v375;
      v345 = v376;
      v346 = v377;
      v718[24] = v593;
      v343[25] = v342;
      closure #1 in osLogInternal(_:log:type:)(v757, v344, v345, v346);
      v378 = v338;
      if (v338)
      {

        __break(1u);
      }

      else
      {
        v347 = v718;
        v348 = v392;
        v718[24] = v594;
        v347[25] = v348;
        closure #1 in osLogInternal(_:log:type:)(v757, v760, v759, v758);
        v370[9] = 0;
        v349 = v718;
        v350 = v393;
        v718[24] = v595;
        v349[25] = v350;
        closure #1 in osLogInternal(_:log:type:)(v757, v760, v759, v758);
        v370[8] = 0;
        v351 = v718;
        v352 = v394;
        v718[24] = v596;
        v351[25] = v352;
        closure #1 in osLogInternal(_:log:type:)(v757, v760, v759, v758);
        v370[7] = 0;
        v353 = v718;
        v354 = v395;
        v718[24] = v597;
        v353[25] = v354;
        closure #1 in osLogInternal(_:log:type:)(v757, v760, v759, v758);
        v370[6] = 0;
        v355 = v718;
        v356 = v396;
        v718[24] = v598;
        v355[25] = v356;
        closure #1 in osLogInternal(_:log:type:)(v757, v760, v759, v758);
        v370[5] = 0;
        v357 = v718;
        v358 = v397;
        v718[24] = v599;
        v357[25] = v358;
        closure #1 in osLogInternal(_:log:type:)(v757, v760, v759, v758);
        v370[4] = 0;
        v359 = v718;
        v360 = v398;
        v718[24] = v600;
        v359[25] = v360;
        closure #1 in osLogInternal(_:log:type:)(v757, v760, v759, v758);
        v370[3] = 0;
        v361 = v718;
        v362 = v399;
        v718[24] = v601;
        v361[25] = v362;
        closure #1 in osLogInternal(_:log:type:)(v757, v760, v759, v758);
        v370[2] = 0;
        v363 = v718;
        v364 = v400;
        v718[24] = v602;
        v363[25] = v364;
        closure #1 in osLogInternal(_:log:type:)(v757, v760, v759, v758);
        v370[1] = 0;
        v365 = v718;
        v366 = v401;
        v718[24] = v603;
        v365[25] = v366;
        closure #1 in osLogInternal(_:log:type:)(v757, v760, v759, v758);
        v370[0] = 0;
        v367 = v718;
        v368 = v403;
        v718[24] = v604;
        v367[25] = v368;
        closure #1 in osLogInternal(_:log:type:)(v757, v760, v759, v758);
        _os_log_impl(&dword_1D93D0000, v406, v407, "HeadphoneManager: %s: %ld  (Set) value same skiping update %s ::  %s", v372, 0x2Au);
        destroyStorage<A>(_:count:)(v373, 0, v371);
        destroyStorage<A>(_:count:)(v374, 3, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v372, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v406);
    (*(v675 + 8))(v678, v674);

    (*(v699 + 8))(v721, v720);
  }

  else
  {
    v36 = v706;
    swift_unknownObjectRetain();

    (v701)(v697, v723, v720);
    v718[23] = v36;
    v583 = v756 + 1;
    v582 = swift_modifyAtReferenceWritableKeyPath();
    (*(v699 + 40))(v37, v697, v720);
    v582();
    v38 = v718[23];
    swift_unknownObjectRelease();

    (*(v667 + 32))(v756, v669);
    v755 = v756[0];
    v754 = 0;
    v584 = static AADevicePropertyRemoteSendState.== infix(_:_:)(&v755, &v754);
    swift_unknownObjectRetain();

    if (v584)
    {
      swift_unknownObjectRetain();

      v728 = v706;
      swift_getAtKeyPath();
      v577 = *(v707 + v719[16]);
      outlined destroy of AADeviceProperty<A, B>(v707, v720, v719);
      v579 = &v727;
      v727 = v577;
      v578 = &v726;
      v726 = 1;
      lazy protocol witness table accessor for type AADevicePropertyRemoteSendState and conformance AADevicePropertyRemoteSendState();
      v580 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
      swift_unknownObjectRelease();

      v581 = v580;
    }

    else
    {
      v581 = 0;
    }

    v576 = v581;
    swift_unknownObjectRelease();

    if (v576)
    {
      v574 = *Headphone_Manager.shared.unsafeMutableAddressor();
      MEMORY[0x1E69E5928](v574);
      v39 = v667;
      v40 = v669;
      v718[9] = v574;
      v575 = (*(v39 + 16))(v40);
      if (v575)
      {
        v573 = v575;
        v41 = v667;
        v42 = v669;
        v568 = v575;
        v718[3] = v575;
        v570 = (*(v41 + 24))(v42);
        v569 = v43;
        v571 = (*((*v574 & *MEMORY[0x1E69E7D40]) + 0x1E0))();
        v572 = v744;
        v744[0] = v570;
        v718[1] = v569;
        v44 = type metadata accessor for HeadphoneDevice();
        MEMORY[0x1DA7308E0](v745, v572, v571, MEMORY[0x1E69E6158], v44, MEMORY[0x1E69E6168]);
        outlined destroy of String(v572);
        v743 = v718[2];
        v567 = v743 != 0;
        v566 = v567;
        outlined destroy of HeadphoneDevice?(&v743);

        if (v566)
        {
          v45 = v685;
          swift_unknownObjectRetain();

          v742 = v706;
          swift_getAtKeyPath();
          v541 = *(v707 + v719[15]);

          outlined destroy of AADeviceProperty<A, B>(v707, v720, v719);
          v542 = static AADeviceModel.deviceConfigFor<A>(keyPath:value:)(v541, v723, v720);

          swift_unknownObjectRelease();

          v741 = v542;
          v46 = Logger.shared.unsafeMutableAddressor();
          (*(v675 + 16))(v45, v46, v674);
          MEMORY[0x1E69E5928](v542);
          v549 = 7;
          v550 = swift_allocObject();
          *(v550 + 16) = v542;
          v564 = Logger.logObject.getter();
          v565 = static os_log_type_t.default.getter();
          v546 = 17;
          v552 = swift_allocObject();
          v545 = 32;
          *(v552 + 16) = 32;
          v553 = swift_allocObject();
          v547 = 8;
          *(v553 + 16) = 8;
          v548 = 32;
          v47 = swift_allocObject();
          v543 = v47;
          *(v47 + 16) = v630;
          *(v47 + 24) = 0;
          v48 = swift_allocObject();
          v49 = v543;
          v554 = v48;
          *(v48 + 16) = v631;
          *(v48 + 24) = v49;
          v555 = swift_allocObject();
          *(v555 + 16) = 0;
          v556 = swift_allocObject();
          *(v556 + 16) = v547;
          v50 = swift_allocObject();
          v544 = v50;
          *(v50 + 16) = v632;
          *(v50 + 24) = 0;
          v51 = swift_allocObject();
          v52 = v544;
          v557 = v51;
          *(v51 + 16) = v633;
          *(v51 + 24) = v52;
          v558 = swift_allocObject();
          *(v558 + 16) = v545;
          v559 = swift_allocObject();
          *(v559 + 16) = v547;
          v53 = swift_allocObject();
          v54 = v550;
          v551 = v53;
          *(v53 + 16) = v634;
          *(v53 + 24) = v54;
          v55 = swift_allocObject();
          v56 = v551;
          v561 = v55;
          *(v55 + 16) = v635;
          *(v55 + 24) = v56;
          v563 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
          v560 = _allocateUninitializedArray<A>(_:)();
          v562 = v57;

          v58 = v552;
          v59 = v562;
          *v562 = v636;
          v59[1] = v58;

          v60 = v553;
          v61 = v562;
          v562[2] = v637;
          v61[3] = v60;

          v62 = v554;
          v63 = v562;
          v562[4] = v638;
          v63[5] = v62;

          v64 = v555;
          v65 = v562;
          v562[6] = v639;
          v65[7] = v64;

          v66 = v556;
          v67 = v562;
          v562[8] = v640;
          v67[9] = v66;

          v68 = v557;
          v69 = v562;
          v562[10] = v641;
          v69[11] = v68;

          v70 = v558;
          v71 = v562;
          v562[12] = v642;
          v71[13] = v70;

          v72 = v559;
          v73 = v562;
          v562[14] = v643;
          v73[15] = v72;

          v74 = v561;
          v75 = v562;
          v562[16] = v644;
          v75[17] = v74;
          _finalizeUninitializedArray<A>(_:)();

          if (os_log_type_enabled(v564, v565))
          {
            v76 = v665;
            v534 = static UnsafeMutablePointer.allocate(capacity:)();
            v533 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v535 = createStorage<A>(capacity:type:)(0);
            v536 = createStorage<A>(capacity:type:)(2);
            v537 = &v733;
            v733 = v534;
            v538 = &v732;
            v732 = v535;
            v539 = &v731;
            v731 = v536;
            serialize(_:at:)(2, &v733);
            serialize(_:at:)(3, v537);
            v729 = v636;
            v730 = v552;
            closure #1 in osLogInternal(_:log:type:)(&v729, v537, v538, v539);
            v540 = v76;
            if (v76)
            {

              __break(1u);
            }

            else
            {
              v729 = v637;
              v730 = v553;
              closure #1 in osLogInternal(_:log:type:)(&v729, &v733, &v732, &v731);
              v532 = 0;
              v729 = v638;
              v730 = v554;
              closure #1 in osLogInternal(_:log:type:)(&v729, &v733, &v732, &v731);
              v531 = 0;
              v729 = v639;
              v730 = v555;
              closure #1 in osLogInternal(_:log:type:)(&v729, &v733, &v732, &v731);
              v530 = 0;
              v729 = v640;
              v730 = v556;
              closure #1 in osLogInternal(_:log:type:)(&v729, &v733, &v732, &v731);
              v529 = 0;
              v729 = v641;
              v730 = v557;
              closure #1 in osLogInternal(_:log:type:)(&v729, &v733, &v732, &v731);
              v528 = 0;
              v729 = v642;
              v730 = v558;
              closure #1 in osLogInternal(_:log:type:)(&v729, &v733, &v732, &v731);
              v527 = 0;
              v729 = v643;
              v730 = v559;
              closure #1 in osLogInternal(_:log:type:)(&v729, &v733, &v732, &v731);
              v526 = 0;
              v729 = v644;
              v730 = v561;
              closure #1 in osLogInternal(_:log:type:)(&v729, &v733, &v732, &v731);
              _os_log_impl(&dword_1D93D0000, v564, v565, "HeadphoneManager: %s: %ld (Set Remote) Prepared config :%s", v534, 0x20u);
              destroyStorage<A>(_:count:)(v535, 0, v533);
              destroyStorage<A>(_:count:)(v536, 2, MEMORY[0x1E69E7CA0] + 8);
              MEMORY[0x1DA730D30](v534, MEMORY[0x1E69E7508]);
            }
          }

          else
          {
          }

          v77 = v574;
          MEMORY[0x1E69E5920](v564);
          v78 = (*(v675 + 8))(v685, v674);
          v525 = (*((*v77 & *MEMORY[0x1E69E7D40]) + 0x138))(v78);
          v516 = [v568 identifier];
          v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v515 = v80;
          v524 = MEMORY[0x1DA730940](v79);

          MEMORY[0x1E69E5920](v516);
          swift_unknownObjectRetain();

          (v701)(v697, v721, v720);
          MEMORY[0x1E69E5928](v542);
          (v701)(v694, v723, v720);
          v81 = *(v692 + 80);
          v517 = (v81 + 64) & ~v81;
          v518 = (v517 + v696 + 7) & 0xFFFFFFFFFFFFFFF8;
          v519 = (v518 + 8 + v81) & ~v81;
          v82 = swift_allocObject();
          v83 = v667;
          v84 = v725;
          v85 = v706;
          v86 = v710;
          v87 = v517;
          v88 = v697;
          v89 = v699;
          v90 = v720;
          v522 = v82;
          v82[2] = v669;
          v82[3] = v90;
          v82[4] = v83;
          v82[5] = v84;
          v82[6] = v85;
          v82[7] = v86;
          v521 = *(v89 + 32);
          v520 = v89 + 32;
          v521(v82 + v87, v88);
          v91 = v519;
          v92 = v694;
          v93 = v521;
          v94 = v720;
          v95 = v522;
          *&v522[v518] = v542;
          v93(&v95[v91], v92, v94);
          v739 = v645;
          v740 = v522;
          v734 = MEMORY[0x1E69E9820];
          v735 = 1107296256;
          v736 = 0;
          v737 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
          v738 = &block_descriptor_6;
          v523 = _Block_copy(&v734);

          [v525 sendDeviceConfig:v542 identifier:v524 completion:v523];
          _Block_release(v523);
          MEMORY[0x1E69E5920](v524);
          MEMORY[0x1E69E5920](v525);
          MEMORY[0x1E69E5920](v542);
          MEMORY[0x1E69E5920](v568);
          MEMORY[0x1E69E5920](v574);

          (*(v699 + 8))(v721, v720);
          goto LABEL_43;
        }

        MEMORY[0x1E69E5920](v568);
      }

      v96 = v683;
      v97 = Logger.shared.unsafeMutableAddressor();
      (*(v675 + 16))(v96, v97, v674);
      swift_unknownObjectRetain();
      v487 = 56;
      v496 = 7;
      v98 = swift_allocObject();
      v99 = v720;
      v100 = v667;
      v101 = v725;
      v102 = v98;
      v103 = v706;
      v491 = v102;
      v102[2] = v669;
      v102[3] = v99;
      v102[4] = v100;
      v102[5] = v101;
      v102[6] = v103;
      swift_unknownObjectRetain();
      v104 = swift_allocObject();
      v105 = v720;
      v106 = v667;
      v107 = v725;
      v108 = v706;
      v497 = v104;
      v104[2] = v669;
      v104[3] = v105;
      v104[4] = v106;
      v104[5] = v107;
      v104[6] = v108;
      default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

      v513 = Logger.logObject.getter();
      v514 = static os_log_type_t.error.getter();
      v493 = 17;
      v498 = swift_allocObject();
      v490 = 32;
      *(v498 + 16) = 32;
      v499 = swift_allocObject();
      v494 = 8;
      *(v499 + 16) = 8;
      v495 = 32;
      v109 = swift_allocObject();
      v488 = v109;
      *(v109 + 16) = v646;
      *(v109 + 24) = 0;
      v110 = swift_allocObject();
      v111 = v488;
      v500 = v110;
      *(v110 + 16) = v647;
      *(v110 + 24) = v111;
      v501 = swift_allocObject();
      *(v501 + 16) = 0;
      v502 = swift_allocObject();
      *(v502 + 16) = v494;
      v112 = swift_allocObject();
      v489 = v112;
      *(v112 + 16) = v648;
      *(v112 + 24) = 0;
      v113 = swift_allocObject();
      v114 = v489;
      v503 = v113;
      *(v113 + 16) = v649;
      *(v113 + 24) = v114;
      v504 = swift_allocObject();
      *(v504 + 16) = v490;
      v505 = swift_allocObject();
      *(v505 + 16) = v494;
      v115 = swift_allocObject();
      v116 = v491;
      v492 = v115;
      *(v115 + 16) = v650;
      *(v115 + 24) = v116;
      v117 = swift_allocObject();
      v118 = v492;
      v506 = v117;
      *(v117 + 16) = v651;
      *(v117 + 24) = v118;
      v507 = swift_allocObject();
      *(v507 + 16) = 64;
      v508 = swift_allocObject();
      *(v508 + 16) = v494;
      v119 = swift_allocObject();
      v120 = v497;
      v510 = v119;
      *(v119 + 16) = v652;
      *(v119 + 24) = v120;
      v512 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v509 = _allocateUninitializedArray<A>(_:)();
      v511 = v121;

      v122 = v498;
      v123 = v511;
      *v511 = v653;
      v123[1] = v122;

      v124 = v499;
      v125 = v511;
      v511[2] = v654;
      v125[3] = v124;

      v126 = v500;
      v127 = v511;
      v511[4] = v655;
      v127[5] = v126;

      v128 = v501;
      v129 = v511;
      v511[6] = v656;
      v129[7] = v128;

      v130 = v502;
      v131 = v511;
      v511[8] = v657;
      v131[9] = v130;

      v132 = v503;
      v133 = v511;
      v511[10] = v658;
      v133[11] = v132;

      v134 = v504;
      v135 = v511;
      v511[12] = v659;
      v135[13] = v134;

      v136 = v505;
      v137 = v511;
      v511[14] = v660;
      v137[15] = v136;

      v138 = v506;
      v139 = v511;
      v511[16] = v661;
      v139[17] = v138;

      v140 = v507;
      v141 = v511;
      v511[18] = v662;
      v141[19] = v140;

      v142 = v508;
      v143 = v511;
      v511[20] = v663;
      v143[21] = v142;

      v144 = v510;
      v145 = v511;
      v511[22] = v664;
      v145[23] = v144;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v513, v514))
      {
        v146 = v665;
        v480 = static UnsafeMutablePointer.allocate(capacity:)();
        v479 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v481 = createStorage<A>(capacity:type:)(1);
        v147 = createStorage<A>(capacity:type:)(2);
        v148 = v481;
        v149 = v718;
        v482 = v147;
        v483 = v749;
        v718[8] = v480;
        v484 = &v748;
        v149[7] = v148;
        v485 = &v747;
        v149[6] = v147;
        serialize(_:at:)(2, v749);
        serialize(_:at:)(4, v483);
        v150 = v498;
        v151 = v718;
        v152 = v483;
        v153 = v484;
        v154 = v485;
        v718[4] = v653;
        v151[5] = v150;
        closure #1 in osLogInternal(_:log:type:)(v746, v152, v153, v154);
        v486 = v146;
        if (v146)
        {

          __break(1u);
        }

        else
        {
          v155 = v718;
          v156 = v499;
          v718[4] = v654;
          v155[5] = v156;
          closure #1 in osLogInternal(_:log:type:)(v746, v749, &v748, &v747);
          v478 = 0;
          v157 = v718;
          v158 = v500;
          v718[4] = v655;
          v157[5] = v158;
          closure #1 in osLogInternal(_:log:type:)(v746, v749, &v748, &v747);
          v477 = 0;
          v159 = v718;
          v160 = v501;
          v718[4] = v656;
          v159[5] = v160;
          closure #1 in osLogInternal(_:log:type:)(v746, v749, &v748, &v747);
          v476 = 0;
          v161 = v718;
          v162 = v502;
          v718[4] = v657;
          v161[5] = v162;
          closure #1 in osLogInternal(_:log:type:)(v746, v749, &v748, &v747);
          v475 = 0;
          v163 = v718;
          v164 = v503;
          v718[4] = v658;
          v163[5] = v164;
          closure #1 in osLogInternal(_:log:type:)(v746, v749, &v748, &v747);
          v474 = 0;
          v165 = v718;
          v166 = v504;
          v718[4] = v659;
          v165[5] = v166;
          closure #1 in osLogInternal(_:log:type:)(v746, v749, &v748, &v747);
          v473 = 0;
          v167 = v718;
          v168 = v505;
          v718[4] = v660;
          v167[5] = v168;
          closure #1 in osLogInternal(_:log:type:)(v746, v749, &v748, &v747);
          v472 = 0;
          v169 = v718;
          v170 = v506;
          v718[4] = v661;
          v169[5] = v170;
          closure #1 in osLogInternal(_:log:type:)(v746, v749, &v748, &v747);
          v471 = 0;
          v171 = v718;
          v172 = v507;
          v718[4] = v662;
          v171[5] = v172;
          closure #1 in osLogInternal(_:log:type:)(v746, v749, &v748, &v747);
          v470 = 0;
          v173 = v718;
          v174 = v508;
          v718[4] = v663;
          v173[5] = v174;
          closure #1 in osLogInternal(_:log:type:)(v746, v749, &v748, &v747);
          v469 = 0;
          v175 = v718;
          v176 = v510;
          v718[4] = v664;
          v175[5] = v176;
          closure #1 in osLogInternal(_:log:type:)(v746, v749, &v748, &v747);
          _os_log_impl(&dword_1D93D0000, v513, v514, "HeadphoneManager: %s: %ld (Set) : Update AAD Device Config, Device Not Connected with UUID: %s device:%@", v480, 0x2Au);
          destroyStorage<A>(_:count:)(v481, 1, v479);
          destroyStorage<A>(_:count:)(v482, 2, MEMORY[0x1E69E7CA0] + 8);
          MEMORY[0x1DA730D30](v480, MEMORY[0x1E69E7508]);
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v513);
      (*(v675 + 8))(v683, v674);
      MEMORY[0x1E69E5920](v574);

      (*(v699 + 8))(v721, v720);
    }

    else
    {
      swift_unknownObjectRetain();

      v718[17] = v706;
      swift_getAtKeyPath();
      v468 = (v688 + v719[13]);
      if (*v468)
      {
        v467 = *v468;

        outlined destroy of AADeviceProperty<A, B>(v688, v720, v719);
        CurrentValueSubject.send(_:)();

        v177 = v718[17];
        swift_unknownObjectRelease();
      }

      else
      {
        v282 = v718[17];
        swift_unknownObjectRelease();

        outlined destroy of AADeviceProperty<A, B>(v688, v720, v719);
      }

      dispatch thunk of ObservableObject.objectWillChange.getter();
      type metadata accessor for ObservableObjectPublisher();
      if (swift_dynamicCast())
      {
        v466 = v718[16];
      }

      else
      {
        v466 = 0;
      }

      v465 = v466;
      if (v466)
      {
        v464 = v465;
        v463 = v465;
        v718[10] = v465;
        ObservableObjectPublisher.send()();
      }

      v178 = v680;
      v179 = Logger.binding.unsafeMutableAddressor();
      (*(v675 + 16))(v178, v179, v674);

      v439 = 32;
      v440 = 7;
      v180 = swift_allocObject();
      v181 = v724;
      v182 = v723;
      v183 = v701;
      v184 = v720;
      v185 = v180;
      v186 = v697;
      v432 = v185;
      *(v185 + 16) = v722;
      *(v185 + 24) = v181;
      v183(v186, v182, v184);
      v429 = (*(v692 + 80) + 48) & ~*(v692 + 80);
      v187 = swift_allocObject();
      v188 = v667;
      v189 = v725;
      v190 = v429;
      v191 = v699;
      v192 = v697;
      v193 = v720;
      v434 = v187;
      v187[2] = v669;
      v187[3] = v193;
      v187[4] = v188;
      v187[5] = v189;
      (*(v191 + 32))(v187 + v190, v192);
      swift_unknownObjectRetain();

      v194 = swift_allocObject();
      v195 = v710;
      v441 = v194;
      *(v194 + 16) = v706;
      *(v194 + 24) = v195;
      v461 = Logger.logObject.getter();
      v462 = static os_log_type_t.default.getter();
      v437 = 17;
      v443 = swift_allocObject();
      v436 = 32;
      *(v443 + 16) = 32;
      v444 = swift_allocObject();
      v438 = 8;
      *(v444 + 16) = 8;
      v196 = swift_allocObject();
      v430 = v196;
      *(v196 + 16) = v605;
      *(v196 + 24) = 0;
      v197 = swift_allocObject();
      v198 = v430;
      v445 = v197;
      *(v197 + 16) = v606;
      *(v197 + 24) = v198;
      v446 = swift_allocObject();
      *(v446 + 16) = 0;
      v447 = swift_allocObject();
      *(v447 + 16) = v438;
      v199 = swift_allocObject();
      v431 = v199;
      *(v199 + 16) = v607;
      *(v199 + 24) = 0;
      v200 = swift_allocObject();
      v201 = v431;
      v448 = v200;
      *(v200 + 16) = v608;
      *(v200 + 24) = v201;
      v449 = swift_allocObject();
      *(v449 + 16) = v436;
      v450 = swift_allocObject();
      *(v450 + 16) = v438;
      v202 = swift_allocObject();
      v203 = v432;
      v433 = v202;
      *(v202 + 16) = v609;
      *(v202 + 24) = v203;
      v204 = swift_allocObject();
      v205 = v433;
      v451 = v204;
      *(v204 + 16) = v610;
      *(v204 + 24) = v205;
      v452 = swift_allocObject();
      *(v452 + 16) = v436;
      v453 = swift_allocObject();
      *(v453 + 16) = v438;
      v206 = swift_allocObject();
      v207 = v434;
      v435 = v206;
      *(v206 + 16) = v611;
      *(v206 + 24) = v207;
      v208 = swift_allocObject();
      v209 = v435;
      v454 = v208;
      *(v208 + 16) = v612;
      *(v208 + 24) = v209;
      v455 = swift_allocObject();
      *(v455 + 16) = v436;
      v456 = swift_allocObject();
      *(v456 + 16) = v438;
      v210 = swift_allocObject();
      v211 = v441;
      v442 = v210;
      *(v210 + 16) = v613;
      *(v210 + 24) = v211;
      v212 = swift_allocObject();
      v213 = v442;
      v458 = v212;
      *(v212 + 16) = v614;
      *(v212 + 24) = v213;
      v460 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v457 = _allocateUninitializedArray<A>(_:)();
      v459 = v214;

      v215 = v443;
      v216 = v459;
      *v459 = v615;
      v216[1] = v215;

      v217 = v444;
      v218 = v459;
      v459[2] = v616;
      v218[3] = v217;

      v219 = v445;
      v220 = v459;
      v459[4] = v617;
      v220[5] = v219;

      v221 = v446;
      v222 = v459;
      v459[6] = v618;
      v222[7] = v221;

      v223 = v447;
      v224 = v459;
      v459[8] = v619;
      v224[9] = v223;

      v225 = v448;
      v226 = v459;
      v459[10] = v620;
      v226[11] = v225;

      v227 = v449;
      v228 = v459;
      v459[12] = v621;
      v228[13] = v227;

      v229 = v450;
      v230 = v459;
      v459[14] = v622;
      v230[15] = v229;

      v231 = v451;
      v232 = v459;
      v459[16] = v623;
      v232[17] = v231;

      v233 = v452;
      v234 = v459;
      v459[18] = v624;
      v234[19] = v233;

      v235 = v453;
      v236 = v459;
      v459[20] = v625;
      v236[21] = v235;

      v237 = v454;
      v238 = v459;
      v459[22] = v626;
      v238[23] = v237;

      v239 = v455;
      v240 = v459;
      v459[24] = v627;
      v240[25] = v239;

      v241 = v456;
      v242 = v459;
      v459[26] = v628;
      v242[27] = v241;

      v243 = v458;
      v244 = v459;
      v459[28] = v629;
      v244[29] = v243;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v461, v462))
      {
        v245 = v665;
        v422 = static UnsafeMutablePointer.allocate(capacity:)();
        v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v423 = createStorage<A>(capacity:type:)(0);
        v246 = createStorage<A>(capacity:type:)(4);
        v247 = v423;
        v248 = v718;
        v424 = v246;
        v425 = v753;
        v718[15] = v422;
        v426 = &v752;
        v248[14] = v247;
        v427 = &v751;
        v248[13] = v246;
        serialize(_:at:)(2, v753);
        serialize(_:at:)(5, v425);
        v249 = v443;
        v250 = v718;
        v251 = v425;
        v252 = v426;
        v253 = v427;
        v718[11] = v615;
        v250[12] = v249;
        closure #1 in osLogInternal(_:log:type:)(v750, v251, v252, v253);
        v428 = v245;
        if (v245)
        {

          __break(1u);
        }

        else
        {
          v254 = v718;
          v255 = v444;
          v718[11] = v616;
          v254[12] = v255;
          closure #1 in osLogInternal(_:log:type:)(v750, v753, &v752, &v751);
          v420 = 0;
          v256 = v718;
          v257 = v445;
          v718[11] = v617;
          v256[12] = v257;
          closure #1 in osLogInternal(_:log:type:)(v750, v753, &v752, &v751);
          v419 = 0;
          v258 = v718;
          v259 = v446;
          v718[11] = v618;
          v258[12] = v259;
          closure #1 in osLogInternal(_:log:type:)(v750, v753, &v752, &v751);
          v418 = 0;
          v260 = v718;
          v261 = v447;
          v718[11] = v619;
          v260[12] = v261;
          closure #1 in osLogInternal(_:log:type:)(v750, v753, &v752, &v751);
          v417 = 0;
          v262 = v718;
          v263 = v448;
          v718[11] = v620;
          v262[12] = v263;
          closure #1 in osLogInternal(_:log:type:)(v750, v753, &v752, &v751);
          v416 = 0;
          v264 = v718;
          v265 = v449;
          v718[11] = v621;
          v264[12] = v265;
          closure #1 in osLogInternal(_:log:type:)(v750, v753, &v752, &v751);
          v415 = 0;
          v266 = v718;
          v267 = v450;
          v718[11] = v622;
          v266[12] = v267;
          closure #1 in osLogInternal(_:log:type:)(v750, v753, &v752, &v751);
          v414 = 0;
          v268 = v718;
          v269 = v451;
          v718[11] = v623;
          v268[12] = v269;
          closure #1 in osLogInternal(_:log:type:)(v750, v753, &v752, &v751);
          v413 = 0;
          v270 = v718;
          v271 = v452;
          v718[11] = v624;
          v270[12] = v271;
          closure #1 in osLogInternal(_:log:type:)(v750, v753, &v752, &v751);
          v412 = 0;
          v272 = v718;
          v273 = v453;
          v718[11] = v625;
          v272[12] = v273;
          closure #1 in osLogInternal(_:log:type:)(v750, v753, &v752, &v751);
          v411 = 0;
          v274 = v718;
          v275 = v454;
          v718[11] = v626;
          v274[12] = v275;
          closure #1 in osLogInternal(_:log:type:)(v750, v753, &v752, &v751);
          v410 = 0;
          v276 = v718;
          v277 = v455;
          v718[11] = v627;
          v276[12] = v277;
          closure #1 in osLogInternal(_:log:type:)(v750, v753, &v752, &v751);
          v409 = 0;
          v278 = v718;
          v279 = v456;
          v718[11] = v628;
          v278[12] = v279;
          closure #1 in osLogInternal(_:log:type:)(v750, v753, &v752, &v751);
          v408 = 0;
          v280 = v718;
          v281 = v458;
          v718[11] = v629;
          v280[12] = v281;
          closure #1 in osLogInternal(_:log:type:)(v750, v753, &v752, &v751);
          _os_log_impl(&dword_1D93D0000, v461, v462, "HeadphoneManager: %s: %ld  (Set)  %s :: %s %s", v422, 0x34u);
          destroyStorage<A>(_:count:)(v423, 0, v421);
          destroyStorage<A>(_:count:)(v424, 4, MEMORY[0x1E69E7CA0] + 8);
          MEMORY[0x1DA730D30](v422, MEMORY[0x1E69E7508]);
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v461);
      (*(v675 + 8))(v680, v674);

      (*(v699 + 8))(v721, v720);
    }
  }

LABEL_43:

  swift_unknownObjectRelease();
  return (*(v699 + 8))(v723, v720);
}

uint64_t outlined destroy of AADeviceProperty<A, B>(uint64_t a1, uint64_t a2, int *a3)
{
  (*(*(a2 - 8) + 8))();
  v3 = *(a1 + a3[13]);

  v4 = *(a1 + a3[14]);

  v5 = *(a1 + a3[15]);

  return a1;
}

uint64_t partial apply for implicit closure #3 in static AADeviceProperty.subscript.setter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  implicit closure #3 in static AADeviceProperty.subscript.setter();
  return result;
}

uint64_t implicit closure #4 in static AADeviceProperty.subscript.setter()
{
  v6 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v7 = v0;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](countAndFlagsBits);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v2);

  v5 = v6;
  v4 = v7;

  outlined destroy of DefaultStringInterpolation(&v6);
  return MEMORY[0x1DA7309B0](v5, v4);
}

uint64_t partial apply for implicit closure #4 in static AADeviceProperty.subscript.setter()
{
  v5 = v0[2];
  v1 = v0[4];
  v2 = v0[5];
  v3 = *(*(v0[3] - 8) + 80);
  return implicit closure #4 in static AADeviceProperty.subscript.setter();
}

uint64_t implicit closure #9 in static AADeviceProperty.subscript.setter()
{
  v6 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v7 = v0;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](countAndFlagsBits);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x1DA7310D0](v2);

  v5 = v6;
  v4 = v7;

  outlined destroy of DefaultStringInterpolation(&v6);
  return MEMORY[0x1DA7309B0](v5, v4);
}

uint64_t implicit closure #10 in static AADeviceProperty.subscript.setter(uint64_t a1, void *a2)
{
  v7 = a1;
  v8 = a2;
  v9 = *(*a2 + *MEMORY[0x1E69E6F98] + 8);
  v6 = (*(*(v9 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v3 - v6;
  swift_unknownObjectRetain();

  v12[1] = v7;
  swift_getAtKeyPath();
  v11 = *(v10 + v9[13]);

  v12[0] = v11;
  v5 = v11 != 0;
  v4 = v5;
  outlined destroy of HeadphonePropertyWrapperPublisher<B>?(v12);
  outlined destroy of AADeviceProperty<A, B>(v10, *(v9 + 3), v9);
  swift_unknownObjectRelease();

  if (v4)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("publisher exists", 0x10uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("no publisher", 0xCuLL, 1)._countAndFlagsBits;
  }
}

uint64_t implicit closure #14 in static AADeviceProperty.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 16))(a2);
  if (v6)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t implicit closure #17 in static AADeviceProperty.subscript.setter(void *a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = [a1 debugDescription];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v3);
  return v4;
}

uint64_t closure #1 in static AADeviceProperty.subscript.setter(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v255 = a1;
  v241 = a2;
  v237 = a3;
  v238 = a4;
  v239 = a5;
  v240 = a6;
  v192 = implicit closure #1 in closure #1 in static AADeviceProperty.subscript.setter;
  v193 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v194 = implicit closure #2 in closure #1 in static AADeviceProperty.subscript.setter;
  v195 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v196 = partial apply for implicit closure #3 in closure #1 in static AADeviceProperty.subscript.setter;
  v197 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v198 = partial apply for implicit closure #4 in closure #1 in static AADeviceProperty.subscript.setter;
  v199 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v200 = closure #1 in OSLogArguments.append(_:)partial apply;
  v201 = closure #1 in OSLogArguments.append(_:)partial apply;
  v202 = closure #1 in OSLogArguments.append(_:)partial apply;
  v203 = closure #1 in OSLogArguments.append(_:)partial apply;
  v204 = closure #1 in OSLogArguments.append(_:)partial apply;
  v205 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v206 = closure #1 in OSLogArguments.append(_:)partial apply;
  v207 = closure #1 in OSLogArguments.append(_:)partial apply;
  v208 = closure #1 in OSLogArguments.append(_:)partial apply;
  v209 = closure #1 in OSLogArguments.append(_:)partial apply;
  v210 = closure #1 in OSLogArguments.append(_:)partial apply;
  v211 = closure #1 in OSLogArguments.append(_:)partial apply;
  v212 = implicit closure #5 in closure #1 in static AADeviceProperty.subscript.setter;
  v213 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v214 = implicit closure #6 in closure #1 in static AADeviceProperty.subscript.setter;
  v215 = thunk for @escaping @callee_guaranteed () -> (@unowned Int)partial apply;
  v216 = partial apply for implicit closure #7 in closure #1 in static AADeviceProperty.subscript.setter;
  v217 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v218 = closure #1 in OSLogArguments.append(_:)partial apply;
  v219 = closure #1 in OSLogArguments.append(_:)partial apply;
  v220 = closure #1 in OSLogArguments.append(_:)partial apply;
  v221 = closure #1 in OSLogArguments.append(_:)partial apply;
  v222 = closure #1 in OSLogArguments.append(_:)partial apply;
  v223 = closure #1 in OSLogArguments.append<A>(_:)partial apply;
  v224 = closure #1 in OSLogArguments.append(_:)partial apply;
  v225 = closure #1 in OSLogArguments.append(_:)partial apply;
  v226 = closure #1 in OSLogArguments.append(_:)partial apply;
  v277 = 0;
  v276 = 0;
  v275 = 0;
  v274 = 0;
  v273 = 0;
  v272 = 0;
  v269 = 0;
  v227 = 0;
  v263 = 0;
  v6 = *a3;
  v236 = *(*a3 + *MEMORY[0x1E69E6F98] + 8);
  v228 = *(*(v236 + 4) + 8);
  v7 = *MEMORY[0x1E69E6F98];
  v230 = 0;
  v229 = *(v6 + v7);
  v279 = v229;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v232 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](0);
  v233 = v98 - v232;
  v234 = (*(*(v236 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v235 = v98 - v234;
  v242 = type metadata accessor for Logger();
  v243 = *(v242 - 8);
  v244 = v242 - 8;
  v246 = *(v243 + 64);
  v245 = (v246 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v255);
  v247 = v98 - v245;
  v248 = (v246 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v249 = v98 - v248;
  v250 = *(v11 + 24);
  v278 = v250;
  v251 = *(v250 - 8);
  v252 = v250 - 8;
  v253 = (*(v251 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v254 = v98 - v253;
  v277 = v12;
  v276 = v13;
  v275 = v14;
  v274 = v15;
  v273 = v16;
  v272 = v17;
  v18 = v12;
  if (v255)
  {
    v191 = v255;
    v19 = v249;
    v161 = v255;
    v263 = v255;
    swift_unknownObjectRetain();

    (*(v251 + 16))(v254, v238, v250);
    v262 = v241;
    v160 = &v261;
    v159 = swift_modifyAtReferenceWritableKeyPath();
    (*(v251 + 40))(v20, v254, v250);
    v159();
    swift_unknownObjectRelease();

    v21 = Logger.shared.unsafeMutableAddressor();
    (*(v243 + 16))(v19, v21, v242);
    v22 = v161;
    v162 = 24;
    v171 = 7;
    v23 = swift_allocObject();
    v24 = v239;
    v165 = v23;
    *(v23 + 16) = v161;
    MEMORY[0x1E69E5928](v24);
    v172 = swift_allocObject();
    *(v172 + 16) = v239;
    v189 = Logger.logObject.getter();
    v190 = static os_log_type_t.error.getter();
    v168 = 17;
    v174 = swift_allocObject();
    v167 = 32;
    *(v174 + 16) = 32;
    v175 = swift_allocObject();
    v169 = 8;
    *(v175 + 16) = 8;
    v170 = 32;
    v25 = swift_allocObject();
    v163 = v25;
    *(v25 + 16) = v192;
    *(v25 + 24) = 0;
    v26 = swift_allocObject();
    v27 = v163;
    v176 = v26;
    *(v26 + 16) = v193;
    *(v26 + 24) = v27;
    v177 = swift_allocObject();
    *(v177 + 16) = 0;
    v178 = swift_allocObject();
    *(v178 + 16) = v169;
    v28 = swift_allocObject();
    v164 = v28;
    *(v28 + 16) = v194;
    *(v28 + 24) = 0;
    v29 = swift_allocObject();
    v30 = v164;
    v179 = v29;
    *(v29 + 16) = v195;
    *(v29 + 24) = v30;
    v180 = swift_allocObject();
    *(v180 + 16) = v167;
    v181 = swift_allocObject();
    *(v181 + 16) = v169;
    v31 = swift_allocObject();
    v32 = v165;
    v166 = v31;
    *(v31 + 16) = v196;
    *(v31 + 24) = v32;
    v33 = swift_allocObject();
    v34 = v166;
    v182 = v33;
    *(v33 + 16) = v197;
    *(v33 + 24) = v34;
    v183 = swift_allocObject();
    *(v183 + 16) = v167;
    v184 = swift_allocObject();
    *(v184 + 16) = v169;
    v35 = swift_allocObject();
    v36 = v172;
    v173 = v35;
    *(v35 + 16) = v198;
    *(v35 + 24) = v36;
    v37 = swift_allocObject();
    v38 = v173;
    v186 = v37;
    *(v37 + 16) = v199;
    *(v37 + 24) = v38;
    v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v185 = _allocateUninitializedArray<A>(_:)();
    v187 = v39;

    v40 = v174;
    v41 = v187;
    *v187 = v200;
    v41[1] = v40;

    v42 = v175;
    v43 = v187;
    v187[2] = v201;
    v43[3] = v42;

    v44 = v176;
    v45 = v187;
    v187[4] = v202;
    v45[5] = v44;

    v46 = v177;
    v47 = v187;
    v187[6] = v203;
    v47[7] = v46;

    v48 = v178;
    v49 = v187;
    v187[8] = v204;
    v49[9] = v48;

    v50 = v179;
    v51 = v187;
    v187[10] = v205;
    v51[11] = v50;

    v52 = v180;
    v53 = v187;
    v187[12] = v206;
    v53[13] = v52;

    v54 = v181;
    v55 = v187;
    v187[14] = v207;
    v55[15] = v54;

    v56 = v182;
    v57 = v187;
    v187[16] = v208;
    v57[17] = v56;

    v58 = v183;
    v59 = v187;
    v187[18] = v209;
    v59[19] = v58;

    v60 = v184;
    v61 = v187;
    v187[20] = v210;
    v61[21] = v60;

    v62 = v186;
    v63 = v187;
    v187[22] = v211;
    v63[23] = v62;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v189, v190))
    {
      v64 = v227;
      v152 = static UnsafeMutablePointer.allocate(capacity:)();
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v153 = createStorage<A>(capacity:type:)(0);
      v154 = createStorage<A>(capacity:type:)(3);
      v155 = &v260;
      v260 = v152;
      v156 = &v259;
      v259 = v153;
      v157 = &v258;
      v258 = v154;
      serialize(_:at:)(2, &v260);
      serialize(_:at:)(4, v155);
      v256 = v200;
      v257 = v174;
      closure #1 in osLogInternal(_:log:type:)(&v256, v155, v156, v157);
      v158 = v64;
      if (v64)
      {

        __break(1u);
      }

      else
      {
        v256 = v201;
        v257 = v175;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v260, &v259, &v258);
        v150 = 0;
        v256 = v202;
        v257 = v176;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v260, &v259, &v258);
        v149 = 0;
        v256 = v203;
        v257 = v177;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v260, &v259, &v258);
        v148 = 0;
        v256 = v204;
        v257 = v178;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v260, &v259, &v258);
        v147 = 0;
        v256 = v205;
        v257 = v179;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v260, &v259, &v258);
        v146 = 0;
        v256 = v206;
        v257 = v180;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v260, &v259, &v258);
        v145 = 0;
        v256 = v207;
        v257 = v181;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v260, &v259, &v258);
        v144 = 0;
        v256 = v208;
        v257 = v182;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v260, &v259, &v258);
        v143 = 0;
        v256 = v209;
        v257 = v183;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v260, &v259, &v258);
        v142 = 0;
        v256 = v210;
        v257 = v184;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v260, &v259, &v258);
        v141 = 0;
        v256 = v211;
        v257 = v186;
        closure #1 in osLogInternal(_:log:type:)(&v256, &v260, &v259, &v258);
        _os_log_impl(&dword_1D93D0000, v189, v190, "HeadphoneManager: %s: %ld Failed to update AAD Device Config, Error: %s %s", v152, 0x2Au);
        destroyStorage<A>(_:count:)(v153, 0, v151);
        destroyStorage<A>(_:count:)(v154, 3, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v152, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v189);
    (*(v243 + 8))(v249, v242);
  }

  else
  {
    v65 = v247;
    v66 = Logger.shared.unsafeMutableAddressor();
    (*(v243 + 16))(v65, v66, v242);
    MEMORY[0x1E69E5928](v239);
    v124 = 7;
    v125 = swift_allocObject();
    *(v125 + 16) = v239;
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.default.getter();
    v121 = 17;
    v127 = swift_allocObject();
    v120 = 32;
    *(v127 + 16) = 32;
    v128 = swift_allocObject();
    v122 = 8;
    *(v128 + 16) = 8;
    v123 = 32;
    v67 = swift_allocObject();
    v118 = v67;
    *(v67 + 16) = v212;
    *(v67 + 24) = 0;
    v68 = swift_allocObject();
    v69 = v118;
    v129 = v68;
    *(v68 + 16) = v213;
    *(v68 + 24) = v69;
    v130 = swift_allocObject();
    *(v130 + 16) = 0;
    v131 = swift_allocObject();
    *(v131 + 16) = v122;
    v70 = swift_allocObject();
    v119 = v70;
    *(v70 + 16) = v214;
    *(v70 + 24) = 0;
    v71 = swift_allocObject();
    v72 = v119;
    v132 = v71;
    *(v71 + 16) = v215;
    *(v71 + 24) = v72;
    v133 = swift_allocObject();
    *(v133 + 16) = v120;
    v134 = swift_allocObject();
    *(v134 + 16) = v122;
    v73 = swift_allocObject();
    v74 = v125;
    v126 = v73;
    *(v73 + 16) = v216;
    *(v73 + 24) = v74;
    v75 = swift_allocObject();
    v76 = v126;
    v136 = v75;
    *(v75 + 16) = v217;
    *(v75 + 24) = v76;
    v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v135 = _allocateUninitializedArray<A>(_:)();
    v137 = v77;

    v78 = v127;
    v79 = v137;
    *v137 = v218;
    v79[1] = v78;

    v80 = v128;
    v81 = v137;
    v137[2] = v219;
    v81[3] = v80;

    v82 = v129;
    v83 = v137;
    v137[4] = v220;
    v83[5] = v82;

    v84 = v130;
    v85 = v137;
    v137[6] = v221;
    v85[7] = v84;

    v86 = v131;
    v87 = v137;
    v137[8] = v222;
    v87[9] = v86;

    v88 = v132;
    v89 = v137;
    v137[10] = v223;
    v89[11] = v88;

    v90 = v133;
    v91 = v137;
    v137[12] = v224;
    v91[13] = v90;

    v92 = v134;
    v93 = v137;
    v137[14] = v225;
    v93[15] = v92;

    v94 = v136;
    v95 = v137;
    v137[16] = v226;
    v95[17] = v94;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v139, v140))
    {
      v96 = v227;
      v111 = static UnsafeMutablePointer.allocate(capacity:)();
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v112 = createStorage<A>(capacity:type:)(0);
      v113 = createStorage<A>(capacity:type:)(2);
      v114 = &v268;
      v268 = v111;
      v115 = &v267;
      v267 = v112;
      v116 = &v266;
      v266 = v113;
      serialize(_:at:)(2, &v268);
      serialize(_:at:)(3, v114);
      v264 = v218;
      v265 = v127;
      closure #1 in osLogInternal(_:log:type:)(&v264, v114, v115, v116);
      v117 = v96;
      if (v96)
      {

        __break(1u);
      }

      else
      {
        v264 = v219;
        v265 = v128;
        closure #1 in osLogInternal(_:log:type:)(&v264, &v268, &v267, &v266);
        v109 = 0;
        v264 = v220;
        v265 = v129;
        closure #1 in osLogInternal(_:log:type:)(&v264, &v268, &v267, &v266);
        v108 = 0;
        v264 = v221;
        v265 = v130;
        closure #1 in osLogInternal(_:log:type:)(&v264, &v268, &v267, &v266);
        v107 = 0;
        v264 = v222;
        v265 = v131;
        closure #1 in osLogInternal(_:log:type:)(&v264, &v268, &v267, &v266);
        v106 = 0;
        v264 = v223;
        v265 = v132;
        closure #1 in osLogInternal(_:log:type:)(&v264, &v268, &v267, &v266);
        v105 = 0;
        v264 = v224;
        v265 = v133;
        closure #1 in osLogInternal(_:log:type:)(&v264, &v268, &v267, &v266);
        v104 = 0;
        v264 = v225;
        v265 = v134;
        closure #1 in osLogInternal(_:log:type:)(&v264, &v268, &v267, &v266);
        v103 = 0;
        v264 = v226;
        v265 = v136;
        closure #1 in osLogInternal(_:log:type:)(&v264, &v268, &v267, &v266);
        _os_log_impl(&dword_1D93D0000, v139, v140, "HeadphoneManager: %s: %ld  Successfully Updated AAD Device Config: %s", v111, 0x20u);
        destroyStorage<A>(_:count:)(v112, 0, v110);
        destroyStorage<A>(_:count:)(v113, 2, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v111, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v139);
    (*(v243 + 8))(v247, v242);
  }

  swift_unknownObjectRetain();

  v271 = v241;
  swift_getAtKeyPath();
  v102 = (v235 + v236[13]);
  if (*v102)
  {
    v101 = *v102;

    outlined destroy of AADeviceProperty<A, B>(v235, v250, v236);
    CurrentValueSubject.send(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    outlined destroy of AADeviceProperty<A, B>(v235, v250, v236);
  }

  dispatch thunk of ObservableObject.objectWillChange.getter();
  type metadata accessor for ObservableObjectPublisher();
  result = swift_dynamicCast();
  if (result)
  {
    v100 = v270;
  }

  else
  {
    v100 = 0;
  }

  v99 = v100;
  if (v100)
  {
    v98[2] = v99;
    v98[1] = v99;
    v269 = v99;
    ObservableObjectPublisher.send()();
  }

  return result;
}

uint64_t implicit closure #3 in closure #1 in static AADeviceProperty.subscript.setter(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return String.init<A>(describing:)();
}

uint64_t implicit closure #4 in closure #1 in static AADeviceProperty.subscript.setter(void *a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = [a1 debugDescription];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v3);
  return v4;
}

uint64_t implicit closure #7 in closure #1 in static AADeviceProperty.subscript.setter(void *a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = [a1 debugDescription];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v3);
  return v4;
}

void (*static AADeviceProperty.subscript.modify(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v8;
  v8[2] = a4;
  v8[1] = a3;
  *v8 = a2;
  v9 = MEMORY[0x1E69E6F98];
  v10 = *a3;
  v4 = *(*a3 + *MEMORY[0x1E69E6F98] + 8);
  v8[3] = v4;
  v6 = *(v4 - 8);
  v8[4] = v6;
  v7 = *(v6 + 64);
  v8[5] = __swift_coroFrameAllocStub(v7);
  v15 = __swift_coroFrameAllocStub(v7);
  v8[6] = v15;
  v16 = *(v10 + *v9);
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();

  static AADeviceProperty.subscript.getter(a3, v15);
  return static AADeviceProperty.subscript.modify;
}

void static AADeviceProperty.subscript.modify(uint64_t **a1, char a2)
{
  v11 = *a1;
  if (a2)
  {
    v7 = v11[6];
    v8 = v11[5];
    v3 = v11[3];
    v4 = v11[2];
    v5 = v11[1];
    v6 = *v11;
    v2 = v11[4];
    (*(v2 + 16))();
    static AADeviceProperty.subscript.setter(v8, v6, v5, v4);
    (*(v2 + 8))(v7, v3);

    swift_unknownObjectRelease();
    free(v7);
    free(v8);
  }

  else
  {
    v9 = v11[6];
    v10 = v11[5];
    static AADeviceProperty.subscript.setter(v9, *v11, v11[1], v11[2]);

    swift_unknownObjectRelease();
    free(v9);
    free(v10);
  }

  free(v11);
}

void AADeviceProperty.wrappedValue.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  implicit closure #1 in default argument 0 of fatalError(_:file:line:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void key path getter for AADeviceProperty.wrappedValue : <A, B>AADeviceProperty<A, B>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = a4;
  v15 = a1;
  v4 = (a2 + a3 - 32);
  v13 = *v4;
  v29 = v13;
  v21 = v4[1];
  v28 = v21;
  v14 = v4[2];
  v5 = v4[3];
  v17 = *(v21 - 8);
  v18 = v21 - 8;
  v6 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v20 = &v12 - v7;
  v24 = v13;
  v25 = v21;
  v26 = v14;
  v27 = v8;
  v22 = type metadata accessor for AADeviceProperty();
  v16 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v15);
  v23 = &v12 - v16;
  outlined init with copy of AADeviceProperty<A, B>(v9, &v12 - v16, v10, v11);
  AADeviceProperty.wrappedValue.getter(v22);
}

uint64_t sub_1D94FD3D8()
{
  v1 = *(v0 - 112);
  (*(*(v0 - 120) + 32))(*(v0 - 104), *(v0 - 96), *(v0 - 88));
  return outlined destroy of AADeviceProperty<A, B>(*(v0 - 72), *(v0 - 88), *(v0 - 80));
}

void key path setter for AADeviceProperty.wrappedValue : <A, B>AADeviceProperty<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v4 = (a3 + a4 - 32);
  v9 = *v4;
  v19 = v9;
  v10 = v4[1];
  v18 = v10;
  v11 = v4[2];
  v12 = v4[3];
  v8 = *(v10 - 8);
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v6 - v7;
  (*(v8 + 16))(&v6 - v7);
  v14 = v9;
  v15 = v10;
  v16 = v11;
  v17 = v12;
  v5 = type metadata accessor for AADeviceProperty();
  AADeviceProperty.wrappedValue.setter(v13, v5);
}

void AADeviceProperty.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v2 = *(a2 + 16);
  implicit closure #1 in default argument 0 of fatalError(_:file:line:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void AADeviceProperty.wrappedValue.modify(void *a1, uint64_t a2)
{
  v6 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v6;
  v6[1] = v2;
  *v6 = a2;
  v3 = *(a2 + 24);
  v6[2] = v3;
  v4 = *(v3 - 8);
  v6[3] = v4;
  v5 = *(v4 + 64);
  v6[4] = __swift_coroFrameAllocStub(v5);
  v6[5] = __swift_coroFrameAllocStub(v5);
  v9 = *(a2 + 16);
  AADeviceProperty.wrappedValue.getter(a2);
}

void AADeviceProperty.wrappedValue.modify(uint64_t **a1, char a2)
{
  v10 = *a1;
  if ((a2 & 1) == 0)
  {
    v8 = v10[5];
    v9 = v10[4];
    v2 = v10[1];
    AADeviceProperty.wrappedValue.setter(v8, *v10);
  }

  v6 = v10[5];
  v7 = v10[4];
  v5 = v10[2];
  v3 = v10[1];
  v4 = *v10;
  (*(v10[3] + 16))();
  AADeviceProperty.wrappedValue.setter(v7, v4);
}

void sub_1D94FD7BC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  (*(a12 + 8))(a13, a14);
  free(a15);
  free(a16);
  free(*(v16 - 48));
}

uint64_t AADeviceProperty.value.setter(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v6 = a2;
  v15 = 0;
  v14 = 0;
  v11 = *(a2 + 24);
  v16 = v11;
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = &v5 - v5;
  v15 = v3;
  v14 = v2;
  v13 = *(v6 + 16);
  (*(v9 + 16))();
  (*(v9 + 40))(v8, v7, v11);
  return (*(v9 + 8))(v12, v11);
}

void *AADeviceProperty.publisher.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  return outlined init with copy of HeadphonePropertyWrapperPublisher<B>?((v2 + *(a1 + 52)), a2);
}

uint64_t AADeviceProperty.publisher.setter(uint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v9 = *(a2 + 24);
  v8 = *(a2 + 16);

  v3 = (v2 + *(a2 + 52));
  v4 = *v3;
  *v3 = v7;
}

uint64_t AADeviceProperty.objectWillChange.getter(uint64_t a1)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(v1 + *(a1 + 56));

  return v3;
}

uint64_t AADeviceProperty.objectWillChange.setter(uint64_t a1, uint64_t a2)
{
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);

  v3 = (v2 + *(a2 + 56));
  v4 = *v3;
  *v3 = a1;
}

void (*AADeviceProperty.objectWillChange.modify(uint64_t a1, uint64_t a2))()
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  result = AADeviceProperty.objectWillChange.modify;
  v4 = v2 + *(a2 + 56);
  return result;
}

uint64_t AADeviceProperty.projectedValue.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12 = a2;
  v13 = a1;
  v15 = "Fatal error";
  v16 = "Unexpectedly found nil while unwrapping an Optional value";
  v17 = "HeadphoneManager/AADevicePropertyWrapper.swift";
  v26 = 0;
  v24 = 0;
  v18 = *(a1 + 24);
  v27 = v18;
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](a1);
  v22 = &v7 - v21;
  v26 = v2;
  v25[1] = *(v3 + 16);
  v23 = *(v2 + *(v3 + 52));

  if (v23)
  {
    v11 = v23;
    v10 = v23;
    v24 = v23;

    *v12 = v10;
  }

  else
  {
    (*(v19 + 16))(v22, v14, v18);
    HeadphonePropertyWrapperPublisher.init(_:)(v22, v18, v25);
    v5 = (v14 + *(v13 + 52));
    v6 = *v5;
    *v5 = v25[0];

    v9 = *(v14 + *(v13 + 52));

    if (v9)
    {
      v8 = v9;
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    *v12 = v8;
  }

  return result;
}

uint64_t AADeviceProperty.configKeyPath.getter(uint64_t a1)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(v1 + *(a1 + 60));

  return v3;
}

uint64_t AADeviceProperty.remoteSendState.getter@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(result + 16);
  v3 = *(result + 24);
  *a2 = *(v2 + *(result + 64));
  return result;
}

uint64_t AADeviceProperty.init(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v31 = a7;
  v35 = a1;
  v34 = a2;
  v27[1] = a3;
  v27[2] = a4;
  v37 = a6;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v49 = a5;
  v48 = a6;
  v32 = *(a6 - 8);
  v33 = a6 - 8;
  v27[0] = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v29 = v27 - v27[0];
  v44 = v7;
  v45 = v8;
  v46 = v9;
  v47 = v10;
  v27[3] = 0;
  v38 = type metadata accessor for AADeviceProperty();
  v28 = (*(*(v38 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v35);
  v12 = v38;
  v13 = v27 - v28;
  v36 = v13;
  v43 = v27 - v28;
  v42 = v11;
  v41 = v14;
  v40 = v15;
  v30 = *v16;
  v39 = v30;
  *&v13[v38[13]] = v17;
  *&v13[v12[14]] = v17;

  v18 = v29;
  v19 = v32;
  v20 = v34;
  v21 = v37;
  *&v36[v38[15]] = v35;
  (*(v19 + 16))(v18, v20, v21);
  (*(v32 + 32))(v36, v29, v37);
  v22 = v31;
  v23 = v37;
  v24 = v38;
  v25 = v36;
  v36[v38[16]] = v30;
  outlined init with copy of AADeviceProperty<A, B>(v25, v22, v23, v24);
  (*(v32 + 8))(v34, v37);

  return outlined destroy of AADeviceProperty<A, B>(v36, v37, v38);
}

uint64_t _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x1E69E6530];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t partial apply for implicit closure #8 in static AADeviceProperty.subscript.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return implicit closure #8 in static AADeviceProperty.subscript.setter();
}

uint64_t partial apply for implicit closure #9 in static AADeviceProperty.subscript.setter()
{
  v5 = v0[2];
  v1 = v0[4];
  v2 = v0[5];
  v3 = *(*(v0[3] - 8) + 80);
  return implicit closure #9 in static AADeviceProperty.subscript.setter();
}

uint64_t partial apply for closure #1 in static AADeviceProperty.subscript.setter(void *a1)
{
  v6 = *(v1 + 16);
  v2 = *(*(v1 + 24) - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in static AADeviceProperty.subscript.setter(a1, *(v1 + 48), *(v1 + 56), v1 + v3, *(v1 + v4), v1 + ((v4 + 8 + *(v2 + 80)) & ~*(v2 + 80)));
}

uint64_t outlined init with copy of AADeviceProperty<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  (*(*(a3 - 8) + 16))();
  v5 = a4[13];
  v6 = *(a1 + v5);

  *(a2 + v5) = v6;
  v7 = a4[14];
  v8 = *(a1 + v7);

  *(a2 + v7) = v8;
  v10 = a4[15];
  v11 = *(a1 + v10);

  result = a2;
  *(a2 + v10) = v11;
  *(a2 + a4[16]) = *(a1 + a4[16]);
  return result;
}

uint64_t _s2os9serialize_2atyx_Spys5UInt8VGzts17FixedWidthIntegerRzlFySWXEfU_TA_5()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in serialize<A>(_:at:)();
}

uint64_t HeadphoneDataProvider.kDefaultsStorageIdentifier.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_kDefaultsStorageIdentifier);
  v3 = *(v0 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_kDefaultsStorageIdentifier + 8);

  return v2;
}

uint64_t HeadphoneDataProvider.defaultsObserver.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider____lazy_storage___defaultsObserver);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  outlined consume of DefaultsObserver??(v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t (*HeadphoneDataProvider.defaultsObserver.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = HeadphoneDataProvider.defaultsObserver.getter();
  return HeadphoneDataProvider.defaultsObserver.modify;
}

uint64_t HeadphoneDataProvider.defaultsObserver.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return HeadphoneDataProvider.defaultsObserver.setter(*a1);
  }

  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  HeadphoneDataProvider.defaultsObserver.setter(v4);
  result = a1;
  outlined destroy of DefaultsObserver?(a1);
  return result;
}

uint64_t static HeadphoneDataProvider.shared.getter()
{
  v1 = HeadphoneDataProvider.shared.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x1E69E5928](*v1);
  swift_endAccess();
  return v2;
}

uint64_t static HeadphoneDataProvider.shared.setter(uint64_t a1)
{
  v3 = HeadphoneDataProvider.shared.unsafeMutableAddressor();
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;
  MEMORY[0x1E69E5920](v1);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t variable initialization expression of HeadphoneDataProvider.listeners()
{
  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type AnyCancellable and conformance AnyCancellable();
  return Set.init()();
}

uint64_t HeadphoneDataProvider.listeners.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_listeners);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t HeadphoneDataProvider.listeners.setter(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_listeners);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t HeadphoneDataProvider.shouldShowMock.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_shouldShowMock);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t HeadphoneDataProvider.shouldShowMockKey.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_shouldShowMockKey);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t HeadphoneDataProvider.shouldShowMockKey.setter(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneDataProvider_shouldShowMockKey);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t closure #1 in closure #1 in HeadphoneDataProvider.init()(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v12 = a1;
  v10 = a2;
  v11 = a3;
  outlined init with copy of Any(a1, v9);
  type metadata accessor for HeadphoneDevice();
  result = swift_dynamicCast();
  if (result)
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {

    type metadata accessor for ReplayAudioAccessoryDevice();
    v4 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x228))();
    v5 = ReplayAudioAccessoryDevice.__allocating_init(withCBDevice:)(v4);
    a2();
    MEMORY[0x1E69E5920](v5);

    return MEMORY[0x1E69E5920](v6);
  }

  return result;
}

uint64_t closure #1 in HeadphoneDataProvider.provideDeviceForDiscoveryHandler()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v65 = a1;
  v66 = a2;
  v74 = a3;
  v75 = a4;
  v59 = partial apply for implicit closure #1 in closure #1 in HeadphoneDataProvider.provideDeviceForDiscoveryHandler();
  v60 = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_1;
  v61 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v62 = closure #1 in OSLogArguments.append(_:)partial apply;
  v63 = closure #1 in OSLogArguments.append(_:)partial apply;
  v64 = closure #1 in OSLogArguments.append(_:)partial apply;
  v88 = 0;
  v89 = 0;
  v86 = 0;
  v87 = 0;
  v79 = 0;
  v72 = 0;
  v67 = type metadata accessor for Logger();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v71 = v27 - v70;
  v88 = v4;
  v89 = v5;
  v86 = v6;
  v87 = v7;
  type metadata accessor for JSONDecoder();
  v73 = JSONDecoder.__allocating_init()();
  v76 = type metadata accessor for ReplayData();
  lazy protocol witness table accessor for type ReplayData and conformance ReplayData();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v77 = 0;
  v78 = 0;

  v57 = v85;
  v58 = v77;
  v55 = v77;
  v56 = v85;
  if (v85)
  {
    v54 = v56;
    v36 = v56;
    v79 = v56;

    v37 = v65;
    v38 = v66;
    v39 = v36;
  }

  else
  {
    v8 = v71;
    v9 = Logger.shared.unsafeMutableAddressor();
    (*(v68 + 16))(v8, v9, v67);
    outlined copy of Data._Representation(v74, v75);
    v42 = 32;
    v43 = 7;
    v10 = swift_allocObject();
    v11 = v75;
    v40 = v10;
    *(v10 + 16) = v74;
    *(v10 + 24) = v11;

    v12 = swift_allocObject();
    v13 = v40;
    v44 = v12;
    *(v12 + 16) = v59;
    *(v12 + 24) = v13;

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    v41 = 17;
    v46 = swift_allocObject();
    *(v46 + 16) = 32;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v14 = swift_allocObject();
    v15 = v44;
    v45 = v14;
    *(v14 + 16) = v60;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v45;
    v49 = v16;
    *(v16 + 16) = v61;
    *(v16 + 24) = v17;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v48 = _allocateUninitializedArray<A>(_:)();
    v50 = v18;

    v19 = v46;
    v20 = v50;
    *v50 = v62;
    v20[1] = v19;

    v21 = v47;
    v22 = v50;
    v50[2] = v63;
    v22[3] = v21;

    v23 = v49;
    v24 = v50;
    v50[4] = v64;
    v24[5] = v23;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v52, v53))
    {
      v25 = v55;
      v29 = static UnsafeMutablePointer.allocate(capacity:)();
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v30 = createStorage<A>(capacity:type:)(0);
      v31 = createStorage<A>(capacity:type:)(1);
      v32 = &v84;
      v84 = v29;
      v33 = &v83;
      v83 = v30;
      v34 = &v82;
      v82 = v31;
      serialize(_:at:)(2, &v84);
      serialize(_:at:)(1, v32);
      v80 = v62;
      v81 = v46;
      closure #1 in osLogInternal(_:log:type:)(&v80, v32, v33, v34);
      v35 = v25;
      if (v25)
      {

        __break(1u);
      }

      else
      {
        v80 = v63;
        v81 = v47;
        closure #1 in osLogInternal(_:log:type:)(&v80, &v84, &v83, &v82);
        v27[2] = 0;
        v80 = v64;
        v81 = v49;
        closure #1 in osLogInternal(_:log:type:)(&v80, &v84, &v83, &v82);
        _os_log_impl(&dword_1D93D0000, v52, v53, "HeadphoneManager-Replay: could not decode from JSONDecoder %s!", v29, 0xCu);
        destroyStorage<A>(_:count:)(v30, 0, v28);
        destroyStorage<A>(_:count:)(v31, 1, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v29, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v52);
    (*(v68 + 8))(v71, v67);
    v37 = 0;
    v38 = 0;
    v39 = 0;
  }

  return v37;
}

uint64_t implicit closure #1 in closure #1 in HeadphoneDataProvider.provideDeviceForDiscoveryHandler()@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  outlined copy of Data._Representation(a1, a2);
  result = a1;
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t thunk for @callee_guaranteed (@guaranteed String, @guaranteed Data) -> (@owned (String, ReplayData)?)@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2], a1[3]);
  *a3 = result;
  a3[1] = v4;
  a3[2] = v5;
  return result;
}

void closure #2 in HeadphoneDataProvider.provideDeviceForDiscoveryHandler()(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(void), uint64_t a7)
{
  v38 = a7;
  v39 = a6;
  v40 = a5;
  v41 = a4;
  v42 = a3;
  v43 = a2;
  v44 = a1;
  v45 = 0;
  v56 = 0;
  v54 = 0;
  v49 = 0;
  v62 = a1;
  v63 = a2;
  v61 = a3;
  v60 = a4;
  v59 = a5;
  v57 = a6;
  v58 = a7;
  v46 = (*(*a3 + 184))();
  if ((v7 & 1) == 0)
  {
    v37 = v46;
    v56 = v46;
    v55 = v46;
    v8 = String.init<A>(_:)();
    v34 = v9;
    v36 = (*((*v41 & *MEMORY[0x1E69E7D40]) + 0x160))(v8);
    v35 = v36;

    if (v36)
    {
      v33 = v35;
      v24 = v35;
      v54 = v35;

      CBDevice.replayDevice.setter(v42);

      v52[3] = MEMORY[0x1E69E6158];
      v52[0] = v44;
      v52[1] = v43;
      v27 = MEMORY[0x1E69E6158];
      __swift_project_boxed_opaque_existential_0(v52, MEMORY[0x1E69E6158]);
      v25 = *(v27 - 8);
      v26 = v25;
      v10 = *(v25 + 64);
      v29 = &v13;
      MEMORY[0x1EEE9AC00](&v13);
      v28 = &v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))();
      v30 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v26 + 8))(v28, v27);
      v32 = [v40 __swift_objectForKeyedSubscript_];
      v31 = v32;
      swift_unknownObjectRelease();
      if (v32)
      {
        v23 = v31;
        v22 = v31;
        v21 = &v47;
        _bridgeAnyObjectToAny(_:)();
        outlined init with take of Any(v21, &v50);
        swift_unknownObjectRelease();
      }

      else
      {
        v50 = 0uLL;
        v51 = 0uLL;
      }

      v53[1] = v51;
      v53[0] = v50;
      if (*(&v51 + 1))
      {
        type metadata accessor for HeadphoneReplayDevice();
        if (swift_dynamicCast())
        {
          v19 = v48;
        }

        else
        {
          v19 = 0;
        }

        v18 = v19;
        __swift_destroy_boxed_opaque_existential_0(v52);
        v20 = v18;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v52);
        outlined destroy of Any?(v53);
        v20 = 0;
      }

      v17 = v20;
      if (v20)
      {
        v16 = v17;
        v15 = v17;
        v49 = v17;
        (*((*v17 & *MEMORY[0x1E69E7D40]) + 0xC88))(v42);
      }

      type metadata accessor for ReplayAudioAccessoryDevice();
      v12 = v24;
      v14 = ReplayAudioAccessoryDevice.__allocating_init(withCBDevice:)(v24);
      v39();
    }
  }
}

uint64_t HeadphoneDataProvider.readCBDeviceFromData(_:hexAddressString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v182 = a1;
  v183 = a2;
  v174 = a3;
  v175 = a4;
  v156 = partial apply for implicit closure #2 in HeadphoneDataProvider.readCBDeviceFromData(_:hexAddressString:);
  v157 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v158 = closure #1 in OSLogArguments.append(_:)partial apply;
  v159 = closure #1 in OSLogArguments.append(_:)partial apply;
  v160 = closure #1 in OSLogArguments.append(_:)partial apply;
  v161 = partial apply for implicit closure #1 in HeadphoneDataProvider.readCBDeviceFromData(_:hexAddressString:);
  v162 = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_10;
  v163 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_10;
  v164 = closure #1 in OSLogArguments.append(_:)partial apply;
  v165 = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_10;
  v217 = 0;
  v218 = 0;
  v215 = 0;
  v216 = 0;
  v214 = 0;
  v166 = 0;
  v207 = 0;
  v208 = 0;
  v205 = 0;
  v206 = 0;
  v204 = 0;
  v199 = 0;
  v200 = 0;
  v190 = 0;
  v176 = 0;
  v167 = type metadata accessor for Logger();
  v168 = *(v167 - 8);
  v169 = v167 - 8;
  v170 = (*(v168 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](0);
  v171 = &v53 - v170;
  v172 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v173 = &v53 - v172;
  v177 = type metadata accessor for URL();
  v178 = *(v177 - 8);
  v179 = v177 - 8;
  v180 = (*(v178 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v176);
  v181 = &v53 - v180;
  v217 = v7;
  v218 = v8;
  v215 = v9;
  v216 = v10;
  v214 = v4;
  type metadata accessor for NSBundle();
  swift_getObjectType();
  v187 = @nonobjc NSBundle.__allocating_init(for:)();

  v186 = MEMORY[0x1DA730940](v182, v183);

  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("data", 4uLL, 1);
  object = v11._object;
  v185 = MEMORY[0x1DA730940](v11._countAndFlagsBits);

  v188 = [v187 pathForResource:v186 ofType:v185];
  MEMORY[0x1E69E5920](v185);
  MEMORY[0x1E69E5920](v186);
  MEMORY[0x1E69E5920](v187);
  if (v188)
  {
    v155 = v188;
    v150 = v188;
    v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v152 = v12;
    MEMORY[0x1E69E5920](v150);
    v153 = v151;
    v154 = v152;
  }

  else
  {
    v153 = 0;
    v154 = 0;
  }

  v148 = v154;
  v149 = v153;
  if (v154)
  {
    v146 = v149;
    v147 = v148;
    v13 = v166;
    v140 = v148;
    v207 = v149;
    v208 = v148;
    URL.init(fileURLWithPath:)();
    default argument 1 of Data.init(contentsOf:options:)();
    v14 = Data.init(contentsOf:options:)();
    v141 = v13;
    v142 = v14;
    v143 = v15;
    v144 = v13;
    if (v13)
    {
      v55 = v144;
      v56 = 0;
      (*(v178 + 8))(v181, v177);

      v137 = 0;
      v138 = 0xF000000000000000;
      v139 = v56;
    }

    else
    {
      v136 = v143;
      v135 = v142;
      (*(v178 + 8))(v181, v177);
      v137 = v135;
      v138 = v136;
      v139 = v141;
    }

    v132 = v139;
    v133 = v138;
    v134 = v137;
    if ((v138 & 0xF000000000000000) == 0xF000000000000000)
    {

      v145 = v132;
    }

    else
    {
      v130 = v134;
      v131 = v133;
      v125 = v133;
      v126 = v134;
      v205 = v134;
      v206 = v133;
      v127 = objc_opt_self();
      outlined copy of Data._Representation(v126, v125);
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v126, v125);
      v129 = [v127 unarchiveObjectWithData_];
      MEMORY[0x1E69E5920](isa);
      if (v129)
      {
        v124 = v129;
        v123 = v129;
        v122 = v189;
        _bridgeAnyObjectToAny(_:)();
        outlined init with take of Any(v122, &v201);
        swift_unknownObjectRelease();
      }

      else
      {
        v201 = 0uLL;
        v202 = 0uLL;
      }

      v203[0] = v201;
      v203[1] = v202;
      if (*(&v202 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, _sSDys11AnyHashableVypGMR);
        if (swift_dynamicCast())
        {
          v121 = v189[4];
        }

        else
        {
          v121 = 0;
        }

        v120 = v121;
      }

      else
      {
        outlined destroy of Any?(v203);
        v120 = 0;
      }

      v119 = v120;
      if (v120)
      {
        v118 = v119;
        v16 = v132;
        v204 = v119;

        v109 = Data.init(hexString:)(v174, v175);
        v110 = v17;
        v199 = v109;
        v200 = v17;
        v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("btAd", 4uLL, 1);
        v113 = &v198;
        v198 = v18;
        v111 = &v197;
        _convertToAnyHashable<A>(_:)();
        outlined copy of Data._Representation(v109, v110);
        v112 = v196;
        v196[3] = MEMORY[0x1E6969080];
        v196[0] = v109;
        v196[1] = v110;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, _sSDys11AnyHashableVypGMR);
        Dictionary.subscript.setter();
        outlined destroy of String(v113);
        type metadata accessor for CBDevice();
        v114 = v204;

        v19 = CBDevice.__allocating_init(dictionary:)();
        v115 = v16;
        v116 = v19;
        v117 = v16;
        if (v16)
        {
          v54 = 0;

          v107 = 0;
          v108 = v54;
        }

        else
        {
          v107 = v116;
          v108 = 0;
        }

        v105 = v108;
        v106 = v107;
        if (v107)
        {
          v104 = v106;
          v102 = v106;
          v190 = v106;
          outlined consume of Data._Representation(v109, v110);
          outlined destroy of [AnyHashable : Any](&v204);
          outlined consume of Data._Representation(v126, v125);

          return v102;
        }

        else
        {
          v20 = v173;
          v21 = Logger.shared.unsafeMutableAddressor();
          (*(v168 + 16))(v20, v21, v167);

          v90 = 32;
          v91 = 7;
          v22 = swift_allocObject();
          v23 = v183;
          v92 = v22;
          *(v22 + 16) = v182;
          *(v22 + 24) = v23;
          v100 = Logger.logObject.getter();
          v101 = static os_log_type_t.error.getter();
          v89 = 17;
          v94 = swift_allocObject();
          *(v94 + 16) = 32;
          v95 = swift_allocObject();
          *(v95 + 16) = 8;
          v24 = swift_allocObject();
          v25 = v92;
          v93 = v24;
          *(v24 + 16) = v156;
          *(v24 + 24) = v25;
          v26 = swift_allocObject();
          v27 = v93;
          v97 = v26;
          *(v26 + 16) = v157;
          *(v26 + 24) = v27;
          v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
          v96 = _allocateUninitializedArray<A>(_:)();
          v98 = v28;

          v29 = v94;
          v30 = v98;
          *v98 = v158;
          v30[1] = v29;

          v31 = v95;
          v32 = v98;
          v98[2] = v159;
          v32[3] = v31;

          v33 = v97;
          v34 = v98;
          v98[4] = v160;
          v34[5] = v33;
          _finalizeUninitializedArray<A>(_:)();

          if (os_log_type_enabled(v100, v101))
          {
            v35 = v105;
            v82 = static UnsafeMutablePointer.allocate(capacity:)();
            v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v83 = createStorage<A>(capacity:type:)(0);
            v84 = createStorage<A>(capacity:type:)(1);
            v85 = &v195;
            v195 = v82;
            v86 = &v194;
            v194 = v83;
            v87 = &v193;
            v193 = v84;
            serialize(_:at:)(2, &v195);
            serialize(_:at:)(1, v85);
            v191 = v158;
            v192 = v94;
            closure #1 in osLogInternal(_:log:type:)(&v191, v85, v86, v87);
            v88 = v35;
            if (v35)
            {

              __break(1u);
            }

            else
            {
              v191 = v159;
              v192 = v95;
              closure #1 in osLogInternal(_:log:type:)(&v191, &v195, &v194, &v193);
              v80 = 0;
              v191 = v160;
              v192 = v97;
              closure #1 in osLogInternal(_:log:type:)(&v191, &v195, &v194, &v193);
              _os_log_impl(&dword_1D93D0000, v100, v101, "HeadphoneManager-Replay: could not inflate %s!", v82, 0xCu);
              destroyStorage<A>(_:count:)(v83, 0, v81);
              destroyStorage<A>(_:count:)(v84, 1, MEMORY[0x1E69E7CA0] + 8);
              MEMORY[0x1DA730D30](v82, MEMORY[0x1E69E7508]);
            }
          }

          else
          {
          }

          MEMORY[0x1E69E5920](v100);
          (*(v168 + 8))(v173, v167);
          outlined consume of Data._Representation(v109, v110);
          outlined destroy of [AnyHashable : Any](&v204);
          outlined consume of Data._Representation(v126, v125);

          return 0;
        }
      }

      outlined consume of Data._Representation(v126, v125);

      v145 = v132;
    }
  }

  else
  {
    v145 = v166;
  }

  v36 = v171;
  v66 = v145;
  v37 = Logger.shared.unsafeMutableAddressor();
  (*(v168 + 16))(v36, v37, v167);

  v68 = 32;
  v69 = 7;
  v38 = swift_allocObject();
  v39 = v183;
  v70 = v38;
  *(v38 + 16) = v182;
  *(v38 + 24) = v39;
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.error.getter();
  v67 = 17;
  v72 = swift_allocObject();
  *(v72 + 16) = 32;
  v73 = swift_allocObject();
  *(v73 + 16) = 8;
  v40 = swift_allocObject();
  v41 = v70;
  v71 = v40;
  *(v40 + 16) = v161;
  *(v40 + 24) = v41;
  v42 = swift_allocObject();
  v43 = v71;
  v75 = v42;
  *(v42 + 16) = v162;
  *(v42 + 24) = v43;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v74 = _allocateUninitializedArray<A>(_:)();
  v76 = v44;

  v45 = v72;
  v46 = v76;
  *v76 = v163;
  v46[1] = v45;

  v47 = v73;
  v48 = v76;
  v76[2] = v164;
  v48[3] = v47;

  v49 = v75;
  v50 = v76;
  v76[4] = v165;
  v50[5] = v49;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v78, v79))
  {
    v51 = v66;
    v59 = static UnsafeMutablePointer.allocate(capacity:)();
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v60 = createStorage<A>(capacity:type:)(0);
    v61 = createStorage<A>(capacity:type:)(1);
    v62 = &v213;
    v213 = v59;
    v63 = &v212;
    v212 = v60;
    v64 = &v211;
    v211 = v61;
    serialize(_:at:)(2, &v213);
    serialize(_:at:)(1, v62);
    v209 = v163;
    v210 = v72;
    closure #1 in osLogInternal(_:log:type:)(&v209, v62, v63, v64);
    v65 = v51;
    if (v51)
    {

      __break(1u);
    }

    else
    {
      v209 = v164;
      v210 = v73;
      closure #1 in osLogInternal(_:log:type:)(&v209, &v213, &v212, &v211);
      v57 = 0;
      v209 = v165;
      v210 = v75;
      closure #1 in osLogInternal(_:log:type:)(&v209, &v213, &v212, &v211);
      _os_log_impl(&dword_1D93D0000, v78, v79, "HeadphoneManager-Replay: could not unarchive %s!", v59, 0xCu);
      destroyStorage<A>(_:count:)(v60, 0, v58);
      destroyStorage<A>(_:count:)(v61, 1, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v59, MEMORY[0x1E69E7508]);
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v78);
  (*(v168 + 8))(v171, v167);
  return 0;
}

unint64_t type metadata accessor for NSBundle()
{
  v2 = lazy cache variable for type metadata for NSBundle;
  if (!lazy cache variable for type metadata for NSBundle)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSBundle);
    return ObjCClassMetadata;
  }

  return v2;
}

id @nonobjc NSBundle.__allocating_init(for:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass_];

  return v0;
}

uint64_t partial apply for implicit closure #1 in HeadphoneDataProvider.readCBDeviceFromData(_:hexAddressString:)()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  implicit closure #1 in HeadphoneDataProvider.readCBDeviceFromData(_:hexAddressString:)();
  return result;
}

uint64_t default argument 1 of Data.init(contentsOf:options:)()
{
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo20NSDataReadingOptionsV_Tt0gq5(0);

  return 0;
}

id CBDevice.__allocating_init(dictionary:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = @nonobjc CBDevice.init(dictionary:)();
  if (v3)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

id HeadphoneDataProvider.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneDataProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id @nonobjc CBDevice.init(dictionary:)()
{
  v7 = *MEMORY[0x1E69E9840];
  v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSAySo7NSErrorCSgGMd, "\\1");
  lazy protocol witness table accessor for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>();
  _convertInOutToPointerArgument<A>(_:)();
  v5 = [v3 initWithDictionary:v4.super.isa error:v6];
  MEMORY[0x1E69E5928](0);
  MEMORY[0x1E69E5920](0);
  if (v5)
  {
    MEMORY[0x1E69E5920](v4.super.isa);

    *MEMORY[0x1E69E9840];
    return v5;
  }

  else
  {
    _convertNSErrorToError(_:)();
    MEMORY[0x1E69E5920](0);
    swift_willThrow();
    MEMORY[0x1E69E5920](v4.super.isa);

    v1 = __OFSUB__(*MEMORY[0x1E69E9840], v7);
    return v2;
  }
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo20NSDataReadingOptionsV_Tt0gq5(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for NSDataReadingOptions();
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t partial apply for implicit closure #2 in HeadphoneDataProvider.readCBDeviceFromData(_:hexAddressString:)()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  implicit closure #2 in HeadphoneDataProvider.readCBDeviceFromData(_:hexAddressString:)();
  return result;
}

void *outlined destroy of DefaultsObserver??(void *a1)
{
  if (*a1 != 1)
  {
    MEMORY[0x1E69E5920](*a1);
  }

  return a1;
}

uint64_t *outlined destroy of Set<AnyCancellable>(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t lazy protocol witness table accessor for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>()
{
  v2 = lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>;
  if (!lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSAySo7NSErrorCSgGMd, "\\1");
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for NSDataReadingOptions()
{
  v4 = lazy cache variable for type metadata for NSDataReadingOptions;
  if (!lazy cache variable for type metadata for NSDataReadingOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSDataReadingOptions);
      return v1;
    }
  }

  return v4;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_1()
{
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v1 = lazy protocol witness table accessor for type Data and conformance Data();
  v2 = MEMORY[0x1E6969080];

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v4, v2, v1);
}

unint64_t lazy protocol witness table accessor for type [Any] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Any] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Any] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSayypGMd, &_sSayypGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Any] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t *outlined destroy of [Any](uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t one-time initialization function for none()
{
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16HeadphoneManager16FeatureOptionSetVGMd, "&1");
  lazy protocol witness table accessor for type FeatureOptionSet and conformance FeatureOptionSet();
  lazy protocol witness table accessor for type [FeatureOptionSet] and conformance [A]();
  return SetAlgebra.init<A>(_:)();
}

unint64_t lazy protocol witness table accessor for type FeatureOptionSet and conformance FeatureOptionSet()
{
  v2 = lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet;
  if (!lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet;
  if (!lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet;
  if (!lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet;
  if (!lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet;
  if (!lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type FeatureOptionSet and conformance FeatureOptionSet);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [FeatureOptionSet] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [FeatureOptionSet] and conformance [A];
  if (!lazy protocol witness table cache variable for type [FeatureOptionSet] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16HeadphoneManager16FeatureOptionSetVGMd, "&1");
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [FeatureOptionSet] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

void *FeatureOptionSet.none.unsafeMutableAddressor()
{
  if (one-time initialization token for none != -1)
  {
    swift_once();
  }

  return &static FeatureOptionSet.none;
}

uint64_t one-time initialization function for rename()
{
  result = FeatureOptionSet.init(rawValue:)(1);
  static FeatureOptionSet.rename = result;
  return result;
}

int *FeatureOptionSet.rename.unsafeMutableAddressor()
{
  if (one-time initialization token for rename != -1)
  {
    swift_once();
  }

  return &static FeatureOptionSet.rename;
}

uint64_t one-time initialization function for doubleTap()
{
  result = FeatureOptionSet.init(rawValue:)(2);
  static FeatureOptionSet.doubleTap = result;
  return result;
}

int *FeatureOptionSet.doubleTap.unsafeMutableAddressor()
{
  if (one-time initialization token for doubleTap != -1)
  {
    swift_once();
  }

  return &static FeatureOptionSet.doubleTap;
}

uint64_t one-time initialization function for doubleTapEnhanced()
{
  result = FeatureOptionSet.init(rawValue:)(4);
  static FeatureOptionSet.doubleTapEnhanced = result;
  return result;
}

int *FeatureOptionSet.doubleTapEnhanced.unsafeMutableAddressor()
{
  if (one-time initialization token for doubleTapEnhanced != -1)
  {
    swift_once();
  }

  return &static FeatureOptionSet.doubleTapEnhanced;
}

uint64_t one-time initialization function for inEarDetection()
{
  result = FeatureOptionSet.init(rawValue:)(8);
  static FeatureOptionSet.inEarDetection = result;
  return result;
}

int *FeatureOptionSet.inEarDetection.unsafeMutableAddressor()
{
  if (one-time initialization token for inEarDetection != -1)
  {
    swift_once();
  }

  return &static FeatureOptionSet.inEarDetection;
}

uint64_t one-time initialization function for mic()
{
  result = FeatureOptionSet.init(rawValue:)(16);
  static FeatureOptionSet.mic = result;
  return result;
}

int *FeatureOptionSet.mic.unsafeMutableAddressor()
{
  if (one-time initialization token for mic != -1)
  {
    swift_once();
  }

  return &static FeatureOptionSet.mic;
}

uint64_t one-time initialization function for headDetection()
{
  result = FeatureOptionSet.init(rawValue:)(32);
  static FeatureOptionSet.headDetection = result;
  return result;
}

int *FeatureOptionSet.headDetection.unsafeMutableAddressor()
{
  if (one-time initialization token for headDetection != -1)
  {
    swift_once();
  }

  return &static FeatureOptionSet.headDetection;
}

uint64_t one-time initialization function for transparency()
{
  result = FeatureOptionSet.init(rawValue:)(256);
  static FeatureOptionSet.transparency = result;
  return result;
}

int *FeatureOptionSet.transparency.unsafeMutableAddressor()
{
  if (one-time initialization token for transparency != -1)
  {
    swift_once();
  }

  return &static FeatureOptionSet.transparency;
}

uint64_t one-time initialization function for anc()
{
  result = FeatureOptionSet.init(rawValue:)(512);
  static FeatureOptionSet.anc = result;
  return result;
}

int *FeatureOptionSet.anc.unsafeMutableAddressor()
{
  if (one-time initialization token for anc != -1)
  {
    swift_once();
  }

  return &static FeatureOptionSet.anc;
}

uint64_t one-time initialization function for untethered()
{
  result = FeatureOptionSet.init(rawValue:)(1024);
  static FeatureOptionSet.untethered = result;
  return result;
}

int *FeatureOptionSet.untethered.unsafeMutableAddressor()
{
  if (one-time initialization token for untethered != -1)
  {
    swift_once();
  }

  return &static FeatureOptionSet.untethered;
}

uint64_t one-time initialization function for all()
{
  _allocateUninitializedArray<A>(_:)();
  v2 = v0;
  *v0 = *FeatureOptionSet.rename.unsafeMutableAddressor();
  v2[1] = *FeatureOptionSet.doubleTap.unsafeMutableAddressor();
  v2[2] = *FeatureOptionSet.doubleTapEnhanced.unsafeMutableAddressor();
  v2[3] = *FeatureOptionSet.inEarDetection.unsafeMutableAddressor();
  v2[4] = *FeatureOptionSet.mic.unsafeMutableAddressor();
  v2[5] = *FeatureOptionSet.headDetection.unsafeMutableAddressor();
  v2[6] = *FeatureOptionSet.transparency.unsafeMutableAddressor();
  v2[7] = *FeatureOptionSet.anc.unsafeMutableAddressor();
  v2[8] = *FeatureOptionSet.untethered.unsafeMutableAddressor();
  _finalizeUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type FeatureOptionSet and conformance FeatureOptionSet();
  return SetAlgebra<>.init(arrayLiteral:)();
}

void *FeatureOptionSet.all.unsafeMutableAddressor()
{
  if (one-time initialization token for all != -1)
  {
    swift_once();
  }

  return &static FeatureOptionSet.all;
}

uint64_t one-time initialization function for Replay_B698()
{
  _allocateUninitializedArray<A>(_:)();
  v2 = v0;
  *v0 = *FeatureOptionSet.rename.unsafeMutableAddressor();
  v2[1] = *FeatureOptionSet.inEarDetection.unsafeMutableAddressor();
  v2[2] = *FeatureOptionSet.mic.unsafeMutableAddressor();
  v2[3] = *FeatureOptionSet.transparency.unsafeMutableAddressor();
  v2[4] = *FeatureOptionSet.untethered.unsafeMutableAddressor();
  _finalizeUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type FeatureOptionSet and conformance FeatureOptionSet();
  return SetAlgebra<>.init(arrayLiteral:)();
}

void *FeatureOptionSet.Replay_B698.unsafeMutableAddressor()
{
  if (one-time initialization token for Replay_B698 != -1)
  {
    swift_once();
  }

  return &static FeatureOptionSet.Replay_B698;
}

uint64_t one-time initialization function for Replay_Beats_B607()
{
  _allocateUninitializedArray<A>(_:)();
  v2 = v0;
  *v0 = *FeatureOptionSet.rename.unsafeMutableAddressor();
  v2[1] = *FeatureOptionSet.inEarDetection.unsafeMutableAddressor();
  v2[2] = *FeatureOptionSet.mic.unsafeMutableAddressor();
  _finalizeUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type FeatureOptionSet and conformance FeatureOptionSet();
  return SetAlgebra<>.init(arrayLiteral:)();
}

void *FeatureOptionSet.Replay_Beats_B607.unsafeMutableAddressor()
{
  if (one-time initialization token for Replay_Beats_B607 != -1)
  {
    swift_once();
  }

  return &static FeatureOptionSet.Replay_Beats_B607;
}

uint64_t protocol witness for OptionSet.init(rawValue:) in conformance FeatureOptionSet@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = FeatureOptionSet.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.init() in conformance FeatureOptionSet()
{
  lazy protocol witness table accessor for type FeatureOptionSet and conformance FeatureOptionSet();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance FeatureOptionSet()
{
  lazy protocol witness table accessor for type FeatureOptionSet and conformance FeatureOptionSet();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance FeatureOptionSet()
{
  lazy protocol witness table accessor for type FeatureOptionSet and conformance FeatureOptionSet();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance FeatureOptionSet()
{
  lazy protocol witness table accessor for type FeatureOptionSet and conformance FeatureOptionSet();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return OptionSet<>.formSymmetricDifference(_:)();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FeatureOptionSet@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = FeatureOptionSet.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance FeatureOptionSet@<X0>(_DWORD *a1@<X8>)
{
  result = FeatureOptionSet.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t HeadphoneReplayDevice.replayDevice.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneReplayDevice_replayDevice);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t HeadphoneReplayDevice.replayDevice.setter(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneReplayDevice_replayDevice);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t HeadphoneReplayDevice.listeners.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneReplayDevice_listeners);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t HeadphoneReplayDevice.listeners.setter(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneReplayDevice_listeners);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t HeadphoneReplayDevice.init(cbDevice:)(uint64_t a1)
{
  *OBJC_IVAR____TtC16HeadphoneManager21HeadphoneReplayDevice_replayDevice = 0;
  v3 = OBJC_IVAR____TtC16HeadphoneManager21HeadphoneReplayDevice_listeners;
  type metadata accessor for AnyCancellable();
  *v3 = Array.init()();
  MEMORY[0x1E69E5928](a1);
  v7 = HeadphoneDevice.init(cbDevice:)(a1);
  MEMORY[0x1E69E5928](v7);
  v5 = CBDevice.replayDevice.getter();
  v4 = (v7 + OBJC_IVAR____TtC16HeadphoneManager21HeadphoneReplayDevice_replayDevice);
  swift_beginAccess();
  v1 = *v4;
  *v4 = v5;

  swift_endAccess();
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v7);
  return v7;
}

uint64_t HeadphoneReplayDevice.name.getter()
{
  v15 = v0;
  v12 = HeadphoneReplayDevice.replayDevice.getter();
  if (v12)
  {
    v1 = v12;

    v2 = outlined destroy of ReplayData?(&v12);
    v6 = (*(*v1 + 400))(v2);
    v7 = v3;

    v8 = v6;
    v9 = v7;
  }

  else
  {
    outlined destroy of ReplayData?(&v12);
    v8 = 0;
    v9 = 0;
  }

  v10 = v8;
  v11 = v9;
  (MEMORY[0x1E69E5928])();
  if (v9)
  {
    v13 = v10;
    v14 = v11;
  }

  else
  {
    (MEMORY[0x1E69E5928])();
    v13 = HeadphoneDevice.name.getter();
    v14 = v4;
    (MEMORY[0x1E69E5920])();
  }

  (MEMORY[0x1E69E5920])();
  return v13;
}

uint64_t *outlined destroy of ReplayData?(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t HeadphoneReplayDevice.name.setter()
{
  MEMORY[0x1E69E5928](v0);
  HeadphoneDevice.name.setter();
  return (MEMORY[0x1E69E5920])();
}

uint64_t (*HeadphoneReplayDevice.name.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = HeadphoneReplayDevice.name.getter();
  a1[1] = v2;
  return HeadphoneReplayDevice.name.modify;
}

uint64_t HeadphoneReplayDevice.name.modify(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if (a2)
  {
    v6 = *a1;
    v7 = a1[1];

    HeadphoneReplayDevice.name.setter();
    return outlined destroy of String(a1);
  }

  else
  {
    v3 = *a1;
    v4 = a1[1];
    return HeadphoneReplayDevice.name.setter();
  }
}

uint64_t HeadphoneReplayDevice.accessorySettingFeatureBitMask.getter()
{
  v3 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x240))();
  [v3 productID];
  MEMORY[0x1E69E5920](v3);
  type metadata accessor for CBProductID();
  lazy protocol witness table accessor for type CBProductID and conformance CBProductID();
  if (== infix<A>(_:_:)())
  {
    return *FeatureOptionSet.Replay_B698.unsafeMutableAddressor();
  }

  else
  {
    return *FeatureOptionSet.Replay_Beats_B607.unsafeMutableAddressor();
  }
}

uint64_t HeadphoneReplayDevice.accessorySettingFeatureBitMask.setter(int a1)
{
  MEMORY[0x1E69E5928](v1);
  HeadphoneDevice.accessorySettingFeatureBitMask.setter(a1);
  return (MEMORY[0x1E69E5920])();
}

uint64_t (*HeadphoneReplayDevice.accessorySettingFeatureBitMask.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = HeadphoneReplayDevice.accessorySettingFeatureBitMask.getter();
  return HeadphoneReplayDevice.accessorySettingFeatureBitMask.modify;
}

uint64_t HeadphoneReplayDevice.deviceColor.getter()
{
  v12 = v0;
  v11 = HeadphoneReplayDevice.replayDevice.getter();
  if (v11)
  {
    v1 = v11;

    v2 = outlined destroy of ReplayData?(&v11);
    v3 = (*(*v1 + 424))(v2);
    v8 = v3;
    v7 = BYTE4(v3);

    v9 = v8;
    v10 = v7;
  }

  else
  {
    outlined destroy of ReplayData?(&v11);
    v9 = 0;
    v10 = 1;
  }

  (MEMORY[0x1E69E5928])();
  if (v10)
  {
    (MEMORY[0x1E69E5928])();
    v5 = HeadphoneDevice.deviceColor.getter();
    (MEMORY[0x1E69E5920])();
    v6 = v5;
  }

  else
  {
    v6 = v9;
  }

  (MEMORY[0x1E69E5920])();
  return v6;
}

uint64_t HeadphoneReplayDevice.deviceColor.setter(int a1)
{
  MEMORY[0x1E69E5928](v1);
  HeadphoneDevice.deviceColor.setter(a1);
  return (MEMORY[0x1E69E5920])();
}

uint64_t (*HeadphoneReplayDevice.deviceColor.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = HeadphoneReplayDevice.deviceColor.getter();
  return HeadphoneReplayDevice.deviceColor.modify;
}

uint64_t HeadphoneReplayDevice.productInfo.getter()
{
  MEMORY[0x1E69E5928](v0);
  v2 = HeadphoneDevice.productInfo.getter();
  (MEMORY[0x1E69E5920])();
  return v2;
}

uint64_t HeadphoneReplayDevice.productInfo.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](v1);
  HeadphoneDevice.productInfo.setter(a1);
  return (MEMORY[0x1E69E5920])();
}

uint64_t (*HeadphoneReplayDevice.productInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = HeadphoneReplayDevice.productInfo.getter();
  return HeadphoneReplayDevice.productInfo.modify;
}

uint64_t HeadphoneReplayDevice.productInfo.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return HeadphoneReplayDevice.productInfo.setter(*a1);
  }

  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  HeadphoneReplayDevice.productInfo.setter(v4);
  return MEMORY[0x1E69E5920](*a1);
}

float HeadphoneReplayDevice.batteryLevelMain.getter()
{
  v12 = v0;
  v11 = HeadphoneReplayDevice.replayDevice.getter();
  if (v11)
  {
    v1 = v11;

    v2 = outlined destroy of ReplayData?(&v11);
    v3 = (*(*v1 + 376))(v2);
    v8 = *&v3;
    v7 = BYTE4(v3);

    v9 = v8;
    v10 = v7;
  }

  else
  {
    outlined destroy of ReplayData?(&v11);
    v9 = 0.0;
    v10 = 1;
  }

  (MEMORY[0x1E69E5928])();
  if (v10)
  {
    (MEMORY[0x1E69E5928])();
    v5 = HeadphoneDevice.batteryLevelMain.getter();
    (MEMORY[0x1E69E5920])();
    v6 = v5;
  }

  else
  {
    v6 = v9;
  }

  (MEMORY[0x1E69E5920])();
  return v6;
}

uint64_t HeadphoneReplayDevice.batteryLevelMain.setter()
{
  MEMORY[0x1E69E5928](v0);
  HeadphoneDevice.batteryLevelMain.setter();
  return (MEMORY[0x1E69E5920])();
}

uint64_t (*HeadphoneReplayDevice.batteryLevelMain.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = HeadphoneReplayDevice.batteryLevelMain.getter();
  return HeadphoneReplayDevice.batteryLevelMain.modify;
}

uint64_t HeadphoneReplayDevice.batteryLevelMain.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  return HeadphoneReplayDevice.batteryLevelMain.setter();
}

float HeadphoneReplayDevice.batteryLevelCase.getter()
{
  v12 = v0;
  v11 = HeadphoneReplayDevice.replayDevice.getter();
  if (v11)
  {
    v1 = v11;

    v2 = outlined destroy of ReplayData?(&v11);
    v3 = (*(*v1 + 304))(v2);
    v8 = *&v3;
    v7 = BYTE4(v3);

    v9 = v8;
    v10 = v7;
  }

  else
  {
    outlined destroy of ReplayData?(&v11);
    v9 = 0.0;
    v10 = 1;
  }

  (MEMORY[0x1E69E5928])();
  if (v10)
  {
    (MEMORY[0x1E69E5928])();
    v5 = HeadphoneDevice.batteryLevelCase.getter();
    (MEMORY[0x1E69E5920])();
    v6 = v5;
  }

  else
  {
    v6 = v9;
  }

  (MEMORY[0x1E69E5920])();
  return v6;
}

uint64_t HeadphoneReplayDevice.batteryLevelCase.setter()
{
  MEMORY[0x1E69E5928](v0);
  HeadphoneDevice.batteryLevelCase.setter();
  return (MEMORY[0x1E69E5920])();
}

uint64_t (*HeadphoneReplayDevice.batteryLevelCase.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = HeadphoneReplayDevice.batteryLevelCase.getter();
  return HeadphoneReplayDevice.batteryLevelCase.modify;
}

uint64_t HeadphoneReplayDevice.batteryLevelCase.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  return HeadphoneReplayDevice.batteryLevelCase.setter();
}

float HeadphoneReplayDevice.batteryLevelLeft.getter()
{
  v12 = v0;
  v11 = HeadphoneReplayDevice.replayDevice.getter();
  if (v11)
  {
    v1 = v11;

    v2 = outlined destroy of ReplayData?(&v11);
    v3 = (*(*v1 + 328))(v2);
    v8 = *&v3;
    v7 = BYTE4(v3);

    v9 = v8;
    v10 = v7;
  }

  else
  {
    outlined destroy of ReplayData?(&v11);
    v9 = 0.0;
    v10 = 1;
  }

  (MEMORY[0x1E69E5928])();
  if (v10)
  {
    (MEMORY[0x1E69E5928])();
    v5 = HeadphoneDevice.batteryLevelLeft.getter();
    (MEMORY[0x1E69E5920])();
    v6 = v5;
  }

  else
  {
    v6 = v9;
  }

  (MEMORY[0x1E69E5920])();
  return v6;
}

uint64_t HeadphoneReplayDevice.batteryLevelLeft.setter()
{
  MEMORY[0x1E69E5928](v0);
  HeadphoneDevice.batteryLevelLeft.setter();
  return (MEMORY[0x1E69E5920])();
}

uint64_t (*HeadphoneReplayDevice.batteryLevelLeft.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = HeadphoneReplayDevice.batteryLevelLeft.getter();
  return HeadphoneReplayDevice.batteryLevelLeft.modify;
}

uint64_t HeadphoneReplayDevice.batteryLevelLeft.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  return HeadphoneReplayDevice.batteryLevelLeft.setter();
}

float HeadphoneReplayDevice.batteryLevelRight.getter()
{
  v12 = v0;
  v11 = HeadphoneReplayDevice.replayDevice.getter();
  if (v11)
  {
    v1 = v11;

    v2 = outlined destroy of ReplayData?(&v11);
    v3 = (*(*v1 + 352))(v2);
    v8 = *&v3;
    v7 = BYTE4(v3);

    v9 = v8;
    v10 = v7;
  }

  else
  {
    outlined destroy of ReplayData?(&v11);
    v9 = 0.0;
    v10 = 1;
  }

  (MEMORY[0x1E69E5928])();
  if (v10)
  {
    (MEMORY[0x1E69E5928])();
    v5 = HeadphoneDevice.batteryLevelRight.getter();
    (MEMORY[0x1E69E5920])();
    v6 = v5;
  }

  else
  {
    v6 = v9;
  }

  (MEMORY[0x1E69E5920])();
  return v6;
}

uint64_t HeadphoneReplayDevice.batteryLevelRight.setter()
{
  MEMORY[0x1E69E5928](v0);
  HeadphoneDevice.batteryLevelRight.setter();
  return (MEMORY[0x1E69E5920])();
}

uint64_t (*HeadphoneReplayDevice.batteryLevelRight.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = HeadphoneReplayDevice.batteryLevelRight.getter();
  return HeadphoneReplayDevice.batteryLevelRight.modify;
}

uint64_t HeadphoneReplayDevice.batteryLevelRight.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  return HeadphoneReplayDevice.batteryLevelRight.setter();
}

Swift::Void __swiftcall HeadphoneReplayDevice.captureCBDeviceData()()
{
  v145 = *MEMORY[0x1E69E9840];
  v103 = 0;
  v139 = 0;
  v138 = 0;
  v137 = 0;
  v133 = 0;
  v84 = 0;
  v141 = 0;
  v140 = 0;
  v85 = type metadata accessor for Logger();
  v86 = *(v85 - 8);
  v87 = v86;
  v1 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](0);
  v88 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for URL();
  v89 = v116;
  v90 = *(v116 - 8);
  v114 = v90;
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v116 - 8);
  v92 = (v91 + 15) & 0xFFFFFFFFFFFFFFF0;
  v110 = &v32 - v92;
  MEMORY[0x1EEE9AC00](&v32 - v92);
  v115 = &v32 - v92;
  v93 = &v32 - v92;
  v139 = &v32 - v92;
  v138 = v0;
  v94 = [objc_opt_self() defaultManager];
  v104 = 1;
  v113 = 1;
  v95 = [v94 URLsForDirectory:9 inDomains:?];

  v97 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v96 = v97;
  v137 = v97;

  Array.subscript.getter();
  v135 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v136 = v3;
  v102 = "";
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v103, v104);
  object = v4._object;
  v106 = &v135;
  MEMORY[0x1DA7310D0](v4._countAndFlagsBits);
  v5 = v126;

  v6 = v5;
  v7 = *v5;
  v125 = MEMORY[0x1E69E7D40];
  v99 = (*((v7 & *MEMORY[0x1E69E7D40]) + 0x228))(v6);

  v100 = [v99 productID];
  v134 = v100;
  v101 = type metadata accessor for CBProductID();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v102, v103, v104);
  v105 = v8._object;
  MEMORY[0x1DA7310D0](v8._countAndFlagsBits);

  v108 = v135;
  v107 = v136;

  outlined destroy of DefaultStringInterpolation(v106);
  MEMORY[0x1DA7309B0](v108, v107);
  v109 = v9;
  URL.appendingPathComponent(_:)();
  v10 = v126;

  v111 = *(v114 + 8);
  v112 = (v114 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v111(v110, v116);
  v119 = MEMORY[0x1E69E7CA0] + 8;
  v120 = _allocateUninitializedArray<A>(_:)();
  v11[3] = v116;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  v117 = *(v114 + 16);
  v118 = (v114 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v117(boxed_opaque_existential_0, v115, v116);
  v13 = v120;
  _finalizeUninitializedArray<A>(_:)();
  v124 = v13;
  v121 = default argument 1 of print(_:separator:terminator:)();
  v123 = v14;
  default argument 2 of print(_:separator:terminator:)();
  v122 = v15;
  print(_:separator:terminator:)();

  v16 = v10;
  v127 = (*((*v10 & *v125) + 0x228))(v16);

  v129 = [v127 dictionaryRepresentation];
  v128 = v129;

  if (v129)
  {
    v83 = v128;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v81 = v83;
  v133 = v83;
  v144 = 0;
  v78 = objc_opt_self();
  v17 = v81;
  v132 = v144;
  v82 = [v78 archivedDataWithRootObject:v81 requiringSecureCoding:0 error:&v132];
  v79 = v82;
  v80 = v132;
  v18 = v132;
  v19 = v144;
  v144 = v80;

  swift_unknownObjectRelease();
  if (v82)
  {
    v77 = v79;
    v20 = v84;
    v64 = v79;
    v73 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v21;
    v65 = v73;
    v66 = v21;
    v140 = v73;
    v141 = v21;

    v67 = MEMORY[0x1E69E7CA0] + 8;
    v68 = _allocateUninitializedArray<A>(_:)();
    v22[3] = v89;
    v23 = __swift_allocate_boxed_opaque_existential_0(v22);
    v117(v23, v93, v89);
    v24 = v68;
    _finalizeUninitializedArray<A>(_:)();
    v72 = v24;
    v69 = default argument 1 of print(_:separator:terminator:)();
    v71 = v25;
    default argument 2 of print(_:separator:terminator:)();
    v70 = v26;
    print(_:separator:terminator:)();

    default argument 1 of Data.write(to:options:)();
    Data.write(to:options:)();
    v75 = v20;
    v76 = v20;
    if (!v20)
    {
      outlined consume of Data._Representation(v65, v66);

      v111(v93, v89);

      v63 = v75;
      goto LABEL_7;
    }

    v33 = v76;
    v34 = 0;
    outlined consume of Data._Representation(v65, v66);

    v111(v93, v89);

    v55 = v33;
    v54 = v34;
  }

  else
  {
    v35 = v144;
    v36 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v37 = 0;

    v111(v93, v89);

    v55 = v36;
    v54 = v37;
  }

  v28 = v88;
  v56 = v54;
  v57 = v55;
  v29 = Logger.shared.unsafeMutableAddressor();
  (*(v87 + 16))(v28, v29, v85);
  v61 = Logger.logObject.getter();
  v58 = v61;
  v60 = static os_log_type_t.default.getter();
  v59 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v62 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v61, v60))
  {
    v30 = v56;
    v45 = static UnsafeMutablePointer.allocate(capacity:)();
    v41 = v45;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v43 = 0;
    v46 = createStorage<A>(capacity:type:)(0);
    v44 = v46;
    v47 = createStorage<A>(capacity:type:)(v43);
    v131 = v45;
    v143 = v46;
    v142 = v47;
    v48 = 0;
    v49 = &v131;
    serialize(_:at:)(0, &v131);
    serialize(_:at:)(v48, v49);
    v130 = v62;
    v50 = &v147;
    MEMORY[0x1EEE9AC00](&v147);
    v51 = var20;
    var20[2] = v31;
    var20[3] = &v143;
    var20[4] = &v142;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v53 = v30;
    if (v30)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1D93D0000, v58, v59, "HeadphoneManager-Replay: capture device data failed!", v41, 2u);
      v39 = 0;
      destroyStorage<A>(_:count:)(v44, 0, v42);
      destroyStorage<A>(_:count:)(v47, v39, MEMORY[0x1E69E7CA0] + 8);
      MEMORY[0x1DA730D30](v41, MEMORY[0x1E69E7508]);

      v40 = v53;
    }
  }

  else
  {

    v40 = v56;
  }

  v38 = v40;

  (*(v87 + 8))(v88, v85);
  v63 = v38;
LABEL_7:
  v27 = __OFSUB__(*MEMORY[0x1E69E9840], v145);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

uint64_t default argument 1 of Data.write(to:options:)()
{
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo20NSDataWritingOptionsV_Tt0gq5(0);

  return 0;
}

id HeadphoneReplayDevice.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneReplayDevice();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *outlined destroy of [AnyCancellable](uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t type metadata accessor for HeadphoneReplayDevice()
{
  v1 = type metadata singleton initialization cache for HeadphoneReplayDevice;
  if (!type metadata singleton initialization cache for HeadphoneReplayDevice)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for HeadphoneReplayDevice()
{
  updated = swift_updateClassMetadata2();
  if (!updated)
  {
    return 0;
  }

  return updated;
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo20NSDataWritingOptionsV_Tt0gq5(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for NSDataWritingOptions();
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t type metadata accessor for NSDataWritingOptions()
{
  v4 = lazy cache variable for type metadata for NSDataWritingOptions;
  if (!lazy cache variable for type metadata for NSDataWritingOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSDataWritingOptions);
      return v1;
    }
  }

  return v4;
}

uint64_t DefaultFeatureContent.device.getter()
{
  v2 = *(v0 + 24);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t DefaultFeatureContent.init(id:headphoneDevice:)(int a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  MEMORY[0x1E69E5928](a2);
  *(v2 + 24) = a2;
  MEMORY[0x1E69E5920](a2);
  return v2;
}

uint64_t protocol witness for HeadphoneFeatureContentType.init(id:headphoneDevice:) in conformance DefaultFeatureContent@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 96))();
  *a1 = result;
  return result;
}

uint64_t B698FeatureContent.device.getter()
{
  v2 = *(v0 + 24);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t B698FeatureContent.init(id:headphoneDevice:)(int a1, uint64_t a2)
{
  if (a1 == 8212 || a1 == 8228)
  {
    *(v6 + 16) = a1;
    MEMORY[0x1E69E5928](a2);
    *(v6 + 24) = a2;
    MEMORY[0x1E69E5920](a2);
    return v6;
  }

  else
  {
    type metadata accessor for B698FeatureContent();
    swift_deallocPartialClassInstance();
    MEMORY[0x1E69E5920](a2);
    return 0;
  }
}

uint64_t protocol witness for HeadphoneFeatureContentType.init(id:headphoneDevice:) in conformance B698FeatureContent@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 96))();
  *a1 = result;
  return result;
}

uint64_t B768FeatureContent.device.getter()
{
  v2 = *(v0 + 24);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t B768FeatureContent.init(id:headphoneDevice:)(int a1, uint64_t a2)
{
  if (a1 == 8217 || a1 == 8219)
  {
    *(v6 + 16) = a1;
    MEMORY[0x1E69E5928](a2);
    *(v6 + 24) = a2;
    MEMORY[0x1E69E5920](a2);
    return v6;
  }

  else
  {
    type metadata accessor for B768FeatureContent();
    swift_deallocPartialClassInstance();
    MEMORY[0x1E69E5920](a2);
    return 0;
  }
}

uint64_t protocol witness for HeadphoneFeatureContentType.init(id:headphoneDevice:) in conformance B768FeatureContent@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 96))();
  *a1 = result;
  return result;
}

uint64_t B788FeatureContent.device.getter()
{
  v2 = *(v0 + 24);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t B788FeatureContent.init(id:headphoneDevice:)(int a1, uint64_t a2)
{
  if (a1 == 8231 || a1 == 8232)
  {
    *(v6 + 16) = a1;
    MEMORY[0x1E69E5928](a2);
    *(v6 + 24) = a2;
    MEMORY[0x1E69E5920](a2);
    return v6;
  }

  else
  {
    type metadata accessor for B788FeatureContent();
    swift_deallocPartialClassInstance();
    MEMORY[0x1E69E5920](a2);
    return 0;
  }
}

uint64_t protocol witness for HeadphoneFeatureContentType.init(id:headphoneDevice:) in conformance B788FeatureContent@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 96))();
  *a1 = result;
  return result;
}

uint64_t Binding._optional<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = a1;
  v34 = partial apply for closure #1 in Binding._optional<A>();
  v35 = partial apply for closure #2 in Binding._optional<A>();
  v54 = 0;
  v53 = 0;
  v36 = *(a1 - 8);
  v37 = v36;
  v38 = *(v36 + 64);
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](a1);
  v40 = &v22 - v39;
  v42 = *(v3 + 16);
  v41 = (*(*(v42 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v51 = &v22 - v41;
  v52 = *(v42 + 16);
  v55 = v52;
  v49 = *(v52 - 8);
  v50 = v52 - 8;
  v43 = v49;
  v45 = *(v49 + 64);
  v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v46 = &v22 - v44;
  v47 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v48 = &v22 - v47;
  v54 = &v22 - v47;
  v53 = v2;
  MEMORY[0x1DA7306D0](v6);
  if ((*(v49 + 48))(v51, 1, v52) == 1)
  {
    outlined destroy of A1?(v51, v52);
    v21 = type metadata accessor for Binding();
    return (*(*(v21 - 8) + 56))(v31, 1);
  }

  else
  {
    v22 = v43;
    v25 = *(v49 + 32);
    v24 = v49 + 32;
    v25(v48, v51, v52);
    (*(v49 + 16))(v46, v48, v52);
    v23 = (*(v22 + 80) + 40) & ~*(v22 + 80);
    v26 = 7;
    v7 = swift_allocObject();
    v8 = v23;
    v9 = v46;
    v10 = v25;
    v11 = v52;
    v28 = v7;
    v30 = 0;
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v11;
    v10(v7 + v8, v9);
    outlined init with copy of Binding<A1?>(v33, v40, v52, v42, v32);
    v27 = (*(v37 + 80) + 40) & ~*(v37 + 80);
    v12 = swift_allocObject();
    v13 = v27;
    v14 = v42;
    v15 = v32;
    v16 = v52;
    v17 = v12;
    v18 = v40;
    v29 = v17;
    *(v17 + 2) = 0;
    *(v17 + 3) = 0;
    *(v17 + 4) = v16;
    outlined init with take of Binding<A1?>(v18, &v17[v13], v16, v14, v15);
    Binding.init(get:set:)();
    v19 = type metadata accessor for Binding();
    (*(*(v19 - 8) + 56))(v31, 0, 1);
    return (*(v49 + 8))(v48, v52);
  }
}

uint64_t outlined destroy of A1?(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t partial apply for closure #1 in Binding._optional<A>()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[4];
  v3 = *(*(v2 - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  return closure #1 in Binding._optional<A>()(v2, a1);
}

uint64_t closure #2 in Binding._optional<A>()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[1] = a1;
  v13 = a5;
  v18 = 0;
  v17 = 0;
  v19 = a5;
  v14 = 0;
  v15 = type metadata accessor for Optional();
  v10 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v16 = v9 - v10;
  v18 = v6;
  v17 = a4;
  v11 = *(v7 - 8);
  v12 = v7 - 8;
  (*(v11 + 16))();
  (*(v11 + 56))(v16, 0, 1, v13);
  type metadata accessor for Binding();
  return Binding.wrappedValue.setter();
}

char *outlined init with copy of Binding<A1?>(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;

  *a2 = v7;
  v10 = *(a1 + 1);

  *(a2 + 1) = v10;
  v13 = *(a5 + 32);
  v14 = *(a3 - 8);
  if ((*(v14 + 48))(&a1[v13], 1))
  {
    memcpy(&a2[v13], &a1[v13], *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v14 + 16))();
    (*(v14 + 56))(&a2[v13], 0, 1, a3);
  }

  return a2;
}

char *outlined init with take of Binding<A1?>(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  v10 = *(a5 + 32);
  v11 = *(a3 - 8);
  if ((*(v11 + 48))(&a1[v10], 1))
  {
    memcpy(&a2[v10], &a1[v10], *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))();
    (*(v11 + 56))(&a2[v10], 0, 1, a3);
  }

  return a2;
}

uint64_t partial apply for closure #2 in Binding._optional<A>()(uint64_t a1)
{
  v7 = v1[4];
  type metadata accessor for Optional();
  v2 = type metadata accessor for Binding();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1 + ((*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80));

  return closure #2 in Binding._optional<A>()(a1, v3, v4, v5, v7);
}

uint64_t ==? infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v12 = a2;
  v16 = a3;
  v13 = a4;
  v20 = 0;
  v19 = 0;
  v21 = a3;
  v14 = *(a3 - 8);
  v15 = a3 - 8;
  v9 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a2);
  v17 = &v6 - v9;
  v20 = v4;
  v19 = v12;
  v10 = *(v14 + 16);
  v11 = v14 + 16;
  v10();
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v14 + 8))(v17, v16);
  if (v18)
  {
    v7 = 0;
  }

  else
  {
    (v10)(v17, v12, v16);
    (*(v14 + 40))(v8, v17, v16);
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t HeadphonePropertyWrapperPublisher.didSet.getter(uint64_t a1)
{
  v13 = a1;
  v9 = &protocol conformance descriptor for HeadphonePropertyWrapperPublisher<A>;
  v18 = MEMORY[0x1E695BE98];
  v25 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, _sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v8 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v17 = &v7 - v8;
  v14 = type metadata accessor for NSRunLoop();
  WitnessTable = swift_getWitnessTable();
  v16 = lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
  v26 = v13;
  v27 = v14;
  v28 = WitnessTable;
  v29 = v16;
  v11 = 0;
  v21 = type metadata accessor for Publishers.ReceiveOn();
  v19 = *(v21 - 8);
  v20 = v21 - 8;
  v10 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13);
  v22 = &v7 - v10;
  v25 = *v1;
  v24[2] = *(v3 + 16);
  v24[1] = v25;
  v4 = [objc_opt_self() mainRunLoop];
  v12 = v24;
  v24[0] = v4;
  v5 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v5 - 8) + 56))(v17, 1);
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSRunLoop.SchedulerOptions?(v17);
  MEMORY[0x1E69E5920](v24[0]);
  swift_getWitnessTable();
  v23 = Publisher.eraseToAnyPublisher()();
  (*(v19 + 8))(v22, v21);
  return v23;
}

unint64_t type metadata accessor for NSRunLoop()
{
  v2 = lazy cache variable for type metadata for NSRunLoop;
  if (!lazy cache variable for type metadata for NSRunLoop)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSRunLoop);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop()
{
  v2 = lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop;
  if (!lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop)
  {
    type metadata accessor for NSRunLoop();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of NSRunLoop.SchedulerOptions?(uint64_t a1)
{
  v3 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t Published.Publisher.didSet.getter(uint64_t a1)
{
  v11 = a1;
  v7[1] = MEMORY[0x1E695C068];
  v16 = MEMORY[0x1E695BE98];
  v23 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, _sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v7[0] = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v15 = v7 - v7[0];
  v12 = type metadata accessor for NSRunLoop();
  WitnessTable = swift_getWitnessTable();
  v14 = lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
  v24 = v11;
  v25 = v12;
  v26 = WitnessTable;
  v27 = v14;
  v9 = 0;
  v19 = type metadata accessor for Publishers.ReceiveOn();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v8 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v11);
  v20 = v7 - v8;
  v23 = v1;
  v22[1] = *(v3 + 16);
  v4 = [objc_opt_self() mainRunLoop];
  v10 = v22;
  v22[0] = v4;
  v5 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v5 - 8) + 56))(v15, 1);
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSRunLoop.SchedulerOptions?(v15);
  MEMORY[0x1E69E5920](v22[0]);
  swift_getWitnessTable();
  v21 = Publisher.eraseToAnyPublisher()();
  (*(v17 + 8))(v20, v19);
  return v21;
}

uint64_t HMMultiState.description.getter(char a1)
{
  type metadata accessor for HMMultiState();
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Don't know", 0xAuLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("YES", 3uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NO", 2uLL, 1)._countAndFlagsBits;
  }

  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return v2;
}

uint64_t HeadphonePropertyWrapperPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(a2 + 16);

  type metadata accessor for CurrentValueSubject();
  swift_getWitnessTable();
  Publisher.subscribe<A>(_:)();
}

uint64_t HeadphonePropertyWrapperPublisher.subject.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 16);

  return v3;
}

uint64_t *HeadphonePropertyWrapperPublisher.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = a3;
  v11 = a1;
  v10 = a2;
  v12 = v14;
  v14[0] = 0;
  v13 = 0;
  v14[1] = a2;
  v8 = *(a2 - 8);
  v9 = a2 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v4 - v5;
  v13 = MEMORY[0x1EEE9AC00](a1);
  type metadata accessor for CurrentValueSubject();
  (*(v8 + 16))(v6, v11, v10);
  v14[0] = CurrentValueSubject.__allocating_init(_:)();
  outlined init with copy of HeadphonePropertyWrapperPublisher<A>(v12, v7);
  (*(v8 + 8))(v11, v10);
  return outlined destroy of HeadphonePropertyWrapperPublisher<A>(v12);
}

void *outlined init with copy of HeadphonePropertyWrapperPublisher<A>(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t *outlined destroy of HeadphonePropertyWrapperPublisher<A>(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

void *__swift_initWithCopy_strong(void *a1, uint64_t *a2)
{
  v4 = *a2;

  result = a1;
  *a1 = v4;
  return result;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;

  v2 = *a1;
  *a1 = v4;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for HeadphonePropertyWrapperPublisher(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 8))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadphonePropertyWrapperPublisher(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t B494BFeatureContent.device.getter()
{
  v2 = *(v0 + 24);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t B494BFeatureContent.init(id:headphoneDevice:)(int a1, uint64_t a2)
{
  if (a1 == 8239)
  {
    *(v5 + 16) = 8239;
    MEMORY[0x1E69E5928](a2);
    *(v5 + 24) = a2;
    MEMORY[0x1E69E5920](a2);
    return v5;
  }

  else
  {
    type metadata accessor for B494BFeatureContent();
    swift_deallocPartialClassInstance();
    MEMORY[0x1E69E5920](a2);
    return 0;
  }
}

uint64_t protocol witness for HeadphoneFeatureContentType.init(id:headphoneDevice:) in conformance B494BFeatureContent@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 96))();
  *a1 = result;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = MEMORY[0x1EEDC4558](options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t String.init<A>(describing:)()
{
  return MEMORY[0x1EEE68D88]();
}

{
  return MEMORY[0x1EEE68D98]();
}

uint64_t _assertionFailure(_:_:file:line:flags:)()
{
  return MEMORY[0x1EEE6A998]();
}

{
  return MEMORY[0x1EEE6A9A0]();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x1EEE6AC50]();
}

{
  return MEMORY[0x1EEE6AC58]();
}

{
  return MEMORY[0x1EEE6AC68]();
}

{
  return MEMORY[0x1EEE6AC70]();
}

{
  return MEMORY[0x1EEE6ACB8]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x1EEE6AD90]();
}

{
  return MEMORY[0x1EEE6AD98]();
}

{
  return MEMORY[0x1EEE6ADA8]();
}

{
  return MEMORY[0x1EEE6ADB0]();
}

{
  return MEMORY[0x1EEE6ADF0]();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return MEMORY[0x1EEE6B178]();
}

{
  return MEMORY[0x1EEE6B180]();
}

{
  return MEMORY[0x1EEE6B188]();
}