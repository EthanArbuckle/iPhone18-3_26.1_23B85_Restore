uint64_t specialized closure #1 in MostActiveParticipantsController.init(participantIdentifiers:configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
  v26 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = *(a2 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v22 = a1;
    v28 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v11 = v28;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v14 = (a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64)));
    v24 = *(v12 + 56);
    v25 = v13;
    v23 = (v12 - 8);
    do
    {
      v15 = v27;
      v16 = v25;
      v25(v27, v14, v4);
      v16(v9, v15, v4);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v17 = (*(*static Defaults.shared + 432))();
      (*v23)(v15, v4);
      *&v9[v7[9]] = 0;
      *&v9[v7[10]] = v17;
      v9[v7[11]] = 0;
      *&v9[v7[12]] = 1065353216;
      *&v9[v7[13]] = 0;
      *&v9[v7[14]] = 0;
      v28 = v11;
      v18 = *(v11 + 16);
      if (v18 >= *(v11 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v11 = v28;
      }

      *(v11 + 16) = v18 + 1;
      outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v9, v11 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v18, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
      v14 += v24;
      --v10;
    }

    while (v10);
    a1 = v22;
  }

  v19 = *(*a1 + 128);
  swift_beginAccess();
  *(a1 + v19) = v11;
}

void specialized MostActiveParticipantsController.update(_:mediaPriorities:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  v5 = v4;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v31 = v8;
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_2();
  v9 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_32_34();
  v30 = *(v3 + *(*v3 + 152));
  v15 = OUTLINED_FUNCTION_26_55();
  v16(v15);
  v17 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v3;
  (*(v11 + 32))(v18 + v17, v2, v9);
  v19 = (v18 + ((v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v20 = v5[1];
  *v19 = *v5;
  v19[1] = v20;
  v19[2] = v5[2];
  v34[4] = partial apply for specialized closure #1 in MostActiveParticipantsController.update(_:mediaPriorities:);
  v34[5] = v18;
  OUTLINED_FUNCTION_5_73();
  v34[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v34[2] = v21;
  v34[3] = &block_descriptor_80;
  v22 = _Block_copy(v34);
  v23 = v30;

  outlined init with copy of ParticipantMediaPriorities(v5, &v33);
  static DispatchQoS.unspecified.getter();
  v33 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_228();
  _s10Foundation4UUIDVACSHAAWlTm_10(v24, v25);
  OUTLINED_FUNCTION_48_22();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_47_20(v26);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v27 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v27);
  _Block_release(v22);

  v28 = OUTLINED_FUNCTION_181();
  v29(v28);
  (*(v31 + 8))(v1, v32);

  OUTLINED_FUNCTION_30_0();
}

void specialized closure #1 in MostActiveParticipantsController.update(_:mediaPriorities:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
  v53 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  v17 = *(*a1 + 128);
  swift_beginAccess();
  v18 = *(a1 + v17);
  v56 = a2;
  v58 = a2;

  v54 = specialized Collection.firstIndex(where:)(partial apply for specialized closure #1 in closure #1 in MostActiveParticipantsController.update(_:mediaPriorities:), v57, v18);
  LODWORD(v55) = v19;

  v21 = *(a3 + 40);
  v20 = *(a3 + 44);
  v22 = v20 + 0.01;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v23 = static Defaults.shared;
  v24 = (*static Defaults.shared + 344);
  v25 = *v24;
  if ((*v24)() < v22)
  {
    v27 = type metadata accessor for UUID();
    (*(*(v27 - 8) + 16))(v8, v56, v27);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v27);
    v28 = *(*a1 + 112);
    swift_beginAccess();
    outlined assign with take of Participant?(v8, a1 + v28, &_s10Foundation4UUIDVSgMd);
    v26 = swift_endAccess();
  }

  v29 = v21 + 0.01;
  if ((v25)(v26) < (v21 + 0.01) || v25() < v22)
  {
    if (v55)
    {
      v30 = 1;
      v31 = 1.0;
LABEL_15:
      v37 = type metadata accessor for UUID();
      v38 = (*(*(v37 - 8) + 16))(v16, v56, v37);
      v39 = (*(*v23 + 432))(v38);
      *&v16[v9[9]] = v31;
      *&v16[v9[10]] = v39;
      v16[v9[11]] = v30;
      *&v16[v9[12]] = 1065353216;
      *&v16[v9[13]] = v21;
      *&v16[v9[14]] = v20;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v40 = *(*(a1 + v17) + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v40);
      v41 = *(a1 + v17);
      *(v41 + 16) = v40 + 1;
      outlined init with copy of Participant?(v16, v41 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v40, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
LABEL_22:
      *(a1 + v17) = v41;
      swift_endAccess();
      specialized MostActiveParticipantsController.startEMATimerIfNecessary()();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
      return;
    }

    if ((v54 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v32 = *(a1 + v17);
    if (v54 >= *(v32 + 16))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v33 = *(v53 + 80);
    v55 = *(v53 + 72);
    v34 = outlined init with copy of Participant?(v32 + ((v33 + 32) & ~v33) + v55 * v54, v13, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
    v35 = v13[v9[11]];
    if (v35 == (v25)(v34) >= v29)
    {
      v36 = (*(*v23 + 432))();
    }

    else
    {
      v36 = *&v13[v9[10]];
    }

    v42 = 1;
LABEL_18:
    v43 = type metadata accessor for UUID();
    (*(*(v43 - 8) + 16))(v16, v56, v43);
    v44 = *&v13[v9[9]];
    v45 = *&v13[v9[12]];
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
    *&v16[v9[9]] = v44;
    *&v16[v9[10]] = v36;
    v16[v9[11]] = v42;
    *&v16[v9[12]] = v45;
    *&v16[v9[13]] = v21;
    *&v16[v9[14]] = v20;
    swift_beginAccess();
    v41 = *(a1 + v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v17) = v41;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew()();
      v41 = v50;
      *(a1 + v17) = v50;
    }

    if (v54 < *(v41 + 16))
    {
      outlined assign with copy of MostActiveParticipantsController<UUID>.ActivityDetails(v16, v41 + ((v33 + 32) & ~v33) + v55 * v54);
      goto LABEL_22;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v55)
  {
    v30 = 0;
    v31 = 0.0;
    goto LABEL_15;
  }

  if ((v54 & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

  v47 = *(a1 + v17);
  v13 = v52;
  if (v54 < *(v47 + 16))
  {
    v33 = *(v53 + 80);
    v55 = *(v53 + 72);
    v48 = outlined init with copy of Participant?(v47 + ((v33 + 32) & ~v33) + v55 * v54, v52, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
    v49 = v13[v9[11]];
    if (v49 == (v25)(v48) >= v29)
    {
      v36 = (*(*v23 + 432))();
      v42 = 0;
    }

    else
    {
      v42 = 0;
      v36 = *&v13[v9[10]];
    }

    goto LABEL_18;
  }

LABEL_32:
  __break(1u);
}

uint64_t specialized MostActiveParticipantsController.startEMATimerIfNecessary()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v52 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchQoS();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTimeInterval();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v47 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DispatchTime();
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v40 - v11;
  ObjectType = type metadata accessor for OS_dispatch_source.TimerFlags();
  v43 = *(ObjectType - 8);
  MEMORY[0x1EEE9AC00](ObjectType);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(*v1 + 152);
  v21 = *(v1 + v20);
  *v19 = v21;
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8020], v15, v17);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  result = (*(v16 + 8))(v19, v15);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    swift_once();
    goto LABEL_4;
  }

  if (*(v1 + *(*v1 + 136)))
  {
    return result;
  }

  v41 = *(*v1 + 136);
  v42 = v2;
  v40 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_source);
  v24 = *(v1 + v20);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACSHAAWlTm_10(&lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags, MEMORY[0x1E69E80B0]);
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

  (*(v43 + 8))(v14, ObjectType);
  v43 = v26;
  ObjectType = swift_getObjectType();
  static DispatchTime.now()();
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_7;
  }

LABEL_4:
  v27 = (*static Defaults.shared + 440);
  v28 = *v27;
  (*v27)();
  v29 = v44;
  + infix(_:_:)();
  v30 = v46;
  v31 = *(v45 + 8);
  v32 = v31(v9, v46);
  v33 = (v28)(v32);
  v34 = v47;
  default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v47);
  MEMORY[0x1BFB21730](v29, v34, ObjectType, v33);
  (*(v48 + 8))(v34, v49);
  v31(v29, v30);
  v35 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for specialized closure #1 in MostActiveParticipantsController.startEMATimerIfNecessary();
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_86;
  v36 = _Block_copy(aBlock);

  v37 = v50;
  static DispatchQoS.unspecified.getter();
  v38 = v52;
  default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  v39 = v43;
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v36);
  (*(v54 + 8))(v38, v42);
  (*(v51 + 8))(v37, v53);

  OS_dispatch_source.resume()();
  *(v1 + v41) = v39;
  return swift_unknownObjectRelease();
}

void specialized MostActiveParticipantsController.markParticipantAsUserSelected(_:shouldPostCallback:)()
{
  OUTLINED_FUNCTION_29();
  v28 = v3;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v29 = v6;
  v30 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_2();
  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_32_34();
  OUTLINED_FUNCTION_0_1();
  v14 = *(v0 + *(v13 + 152));
  v15 = OUTLINED_FUNCTION_26_55();
  v16(v15);
  v17 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  (*(v9 + 32))(v18 + v17, v2, v7);
  *(v18 + v17 + v11) = v28;
  v31[4] = partial apply for specialized closure #1 in MostActiveParticipantsController.markParticipantAsUserSelected(_:shouldPostCallback:);
  v31[5] = v18;
  OUTLINED_FUNCTION_5_73();
  v31[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v31[2] = v19;
  v31[3] = &block_descriptor_29_2;
  v20 = _Block_copy(v31);
  v21 = v14;

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_0_228();
  _s10Foundation4UUIDVACSHAAWlTm_10(v22, v23);
  OUTLINED_FUNCTION_48_22();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_47_20(v24);
  OUTLINED_FUNCTION_26_32();
  v25 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v25);
  _Block_release(v20);

  v26 = OUTLINED_FUNCTION_181();
  v27(v26);
  (*(v29 + 8))(v1, v30);

  OUTLINED_FUNCTION_30_0();
}

void specialized closure #1 in MostActiveParticipantsController.markParticipantAsUserSelected(_:shouldPostCallback:)(uint64_t a1, uint64_t a2, char a3)
{
  specialized MostActiveParticipantsController.boostParticipantEMAToMax(_:)(a2);
  if ((a3 & 1) == 0)
  {
    specialized MostActiveParticipantsController.updateActiveParticipantsEMA()();
    specialized MostActiveParticipantsController.checkForMostActiveParticipantChange(shouldPostCallback:)(0);
  }
}

void specialized MostActiveParticipantsController.boostParticipantEMAToMax(_:)(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36[-v13];
  OUTLINED_FUNCTION_13_38();
  v16 = *(v15 + 128);
  OUTLINED_FUNCTION_4_0();
  v17 = *(v3 + v16);
  v37 = a1;

  v18 = specialized Collection.firstIndex(where:)(partial apply for specialized closure #1 in MostActiveParticipantsController.boostParticipantEMAToMax(_:), v36, v17);
  v20 = v19;

  if (v20)
  {
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_7_0();
    (*(v21 + 16))(v11, a1);
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    OUTLINED_FUNCTION_0_1();
    v23 = (*(v22 + 432))();
    OUTLINED_FUNCTION_0_1();
    v25 = (*(v24 + 448))();
    *(v11 + v5[9]) = 1065353216;
    *(v11 + v5[10]) = v23;
    *(v11 + v5[11]) = 1;
    *(v11 + v5[12]) = v25 + 0.01;
    *(v11 + v5[13]) = 0;
    *(v11 + v5[14]) = 0;
    OUTLINED_FUNCTION_46_28();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v26 = *(*(v3 + v16) + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v26);
    v27 = *(v3 + v16);
    *(v27 + 16) = v26 + 1;
    OUTLINED_FUNCTION_25_57();
    outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v11, v28 + *(v7 + 72) * v26, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
    goto LABEL_12;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v29 = *(v3 + v16);
    if (v18 < *(v29 + 16))
    {
      v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v7 = *(v7 + 72) * v18;
      v30 = v29 + v11 + v7;
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_7_0();
      (*(v31 + 16))(v14, a1);
      v2 = *(v30 + v5[10]);
      if (one-time initialization token for shared == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  OUTLINED_FUNCTION_0_9();
LABEL_8:
  OUTLINED_FUNCTION_0_1();
  v33 = (*(v32 + 448))();
  *&v14[v5[9]] = 1065353216;
  *&v14[v5[10]] = v2;
  v14[v5[11]] = 1;
  *&v14[v5[12]] = v33 + 0.01;
  *&v14[v5[13]] = 0;
  *&v14[v5[14]] = 0;
  OUTLINED_FUNCTION_46_28();
  v27 = *(v3 + v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v16) = v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v27 = v35;
    *(v3 + v16) = v35;
  }

  if (v18 < *(v27 + 16))
  {
    outlined assign with take of Participant?(v14, v27 + v11 + v7, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
LABEL_12:
    *(v3 + v16) = v27;
    swift_endAccess();
    return;
  }

  __break(1u);
}

void specialized MostActiveParticipantsController.updateActiveParticipantsEMA()()
{
  v2 = v0;
  v80 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40();
  v79 = v6;
  OUTLINED_FUNCTION_4_24();
  v78 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_40();
  v77 = v10;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v89 = &v72 - v14;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_G7elementtMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  v72 = (&v72 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_G7elementtSgMd);
  v18 = OUTLINED_FUNCTION_22(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_17();
  v82 = v19 - v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_32();
  v81 = v22;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_13_38();
  v25 = *(v2 + *(v24 + 152));
  *v1 = v25;
  v26 = OUTLINED_FUNCTION_61_0();
  v27(v26);
  v28 = v25;
  v29 = _dispatchPreconditionTest(_:)();
  v30 = OUTLINED_FUNCTION_33_0();
  v31(v30);
  if (v29)
  {
    OUTLINED_FUNCTION_13_38();
    v33 = *(v32 + 128);
    OUTLINED_FUNCTION_4_0();
    v90 = v33;
    v34 = *(*(v2 + v33) + 16);
    v73 = *(v2 + v33);

    OUTLINED_FUNCTION_4_0();
    v35 = 0;
    v76 = v93;
    v75 = (v4 + 8);
    v74 = (v8 + 8);
    v36 = v83;
    v37 = v82;
    v38 = v81;
    v84 = v34;
    while (1)
    {
      if (v35 == v34)
      {
        v39 = 1;
        v88 = v34;
      }

      else
      {
        if ((v35 & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (v35 >= *(v73 + 16))
        {
          goto LABEL_23;
        }

        v40 = v35 + 1;
        v41 = v73 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v35;
        v42 = *(v36 + 48);
        v43 = v72;
        *v72 = v35;
        outlined init with copy of Participant?(v41, v43 + v42, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
        outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v43, v37, &_sSi6offset_15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_G7elementtMd);
        v39 = 0;
        v88 = v40;
      }

      __swift_storeEnumTagSinglePayload(v37, v39, 1, v36);
      outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v37, v38, &_sSi6offset_15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_G7elementtSgMd);
      if (__swift_getEnumTagSinglePayload(v38, 1, v36) == 1)
      {

        return;
      }

      v44 = *v38;
      v45 = *(v36 + 48);
      v46 = v85;
      v91 = swift_allocBox();
      v48 = v47;
      outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v38 + v45, v47, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
      OUTLINED_FUNCTION_3_5();
      v49 = v46[10];
      v50 = *(v48 + v49) + 1.0;
      if (*(v48 + v46[11]))
      {
        v51 = 1.0;
      }

      else
      {
        v51 = 0.0;
      }

      v52 = (v51 * (2.0 / (v50 + 1.0))) + (*(v48 + v46[9]) * (1.0 - (2.0 / (v50 + 1.0))));
      *(v48 + v49) = v50;
      *(v48 + v46[9]) = v52;
      outlined init with copy of Participant?(v48, v89, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
      v53 = v90;
      swift_beginAccess();
      v54 = *(v2 + v53);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + v53) = v54;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew()();
        v54 = v71;
        *(v2 + v90) = v71;
      }

      v56 = v91;
      if ((v44 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v44 >= *(v54 + 16))
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_25_57();
      outlined assign with take of Participant?(v89, v57 + *(v12 + 72) * v44, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
      *(v2 + v90) = v54;
      swift_endAccess();
      v58 = *(v2 + 32);
      if (v58)
      {
        v59 = *(v2 + 40);
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);

        v87 = static OS_dispatch_queue.main.getter();
        v60 = swift_allocObject();
        *(v60 + 16) = v58;
        *(v60 + 24) = v59;
        *(v60 + 32) = v56;
        *(v60 + 40) = v52;
        v93[2] = partial apply for specialized closure #1 in MostActiveParticipantsController.updateActiveParticipantsEMA();
        v93[3] = v60;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v93[0] = thunk for @escaping @callee_guaranteed () -> ();
        v93[1] = &block_descriptor_41_3;
        v86 = _Block_copy(aBlock);
        outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v58);

        v61 = v77;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_0_228();
        _s10Foundation4UUIDVACSHAAWlTm_10(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, v62);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
        OUTLINED_FUNCTION_3_8();
        lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
        v63 = v12;
        v64 = v2;
        v65 = v79;
        v66 = v80;
        v38 = v81;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v67 = v86;
        v68 = v87;
        MEMORY[0x1BFB215C0](0, v61, v65, v86);
        _Block_release(v67);

        v36 = v83;
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v58);
        v69 = v65;
        v2 = v64;
        v12 = v63;
        (*v75)(v69, v66);
        v70 = v61;
        v37 = v82;
        (*v74)(v70, v78);
      }

      v34 = v84;
      v35 = v88;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  __break(1u);
}

uint64_t specialized MostActiveParticipantsController.checkForMostActiveParticipantChange(shouldPostCallback:)(uint64_t a1)
{
  v3 = v1;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v54 = v6;
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40();
  v52 = v7;
  OUTLINED_FUNCTION_4_24();
  v53 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v51 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_40();
  v50 = v10;
  OUTLINED_FUNCTION_4_24();
  v11 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  v21 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8();
  v27 = (v26 - v25);
  v28 = *&v3[*(*v3 + 152)];
  *(v26 - v25) = v28;
  (*(v23 + 104))(v26 - v25, *MEMORY[0x1E69E8020], v21);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  v31 = *(v23 + 8);
  v30 = v23 + 8;
  v31(v27, v21);
  if ((v28 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    OUTLINED_FUNCTION_0_9();
    goto LABEL_4;
  }

  v30 = *(*v3 + 128);
  OUTLINED_FUNCTION_3_5();
  aBlock[0] = *&v3[v30];
  swift_bridgeObjectRetain_n();
  specialized MutableCollection<>.sort(by:)(aBlock);

  v27 = specialized MostActiveParticipantsController.applyProminenceWeights(sortedParticipants:)(aBlock[0]);

  if ((a1 & 1) == 0)
  {
    *&v3[v30] = v27;
  }

  Date.init()();
  a1 = *(*v3 + 144);
  OUTLINED_FUNCTION_4_0();
  (*(v13 + 16))(v17, &v3[a1], v11);
  Date.timeIntervalSince(_:)();
  v2 = v32;
  v33 = *(v13 + 8);
  v33(v17, v11);
  v33(v20, v11);
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_12;
  }

LABEL_4:
  OUTLINED_FUNCTION_0_1();
  if ((*(v34 + 480))() >= v2)
  {
  }

  v36 = specialized MostActiveParticipantsController.shouldPostMostActiveParticipantsDidChange(oldParticipantsDetails:newParticipantsDetails:)(v35, v27);

  *&v3[v30] = v27;

  result = OUTLINED_FUNCTION_4_0();
  v38 = *(v3 + 2);
  if (v38)
  {
    if (v36)
    {
      v39 = *(v3 + 3);

      Date.init()();
      swift_beginAccess();
      (*(v13 + 40))(&v3[a1], v20, v11);
      swift_endAccess();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v40 = static OS_dispatch_queue.main.getter();
      v41 = swift_allocObject();
      v41[2] = v38;
      v41[3] = v39;
      v41[4] = v3;
      aBlock[4] = partial apply for specialized closure #1 in MostActiveParticipantsController.checkForMostActiveParticipantChange(shouldPostCallback:);
      aBlock[5] = v41;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_35_2;
      v42 = _Block_copy(aBlock);
      outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v38);

      v43 = v50;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_0_228();
      _s10Foundation4UUIDVACSHAAWlTm_10(v44, v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      OUTLINED_FUNCTION_3_8();
      lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v46, &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      v47 = v52;
      v48 = v55;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x1BFB215C0](0, v43, v47, v42);
      _Block_release(v42);

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v38);
      (*(v54 + 8))(v47, v48);
      return (*(v51 + 8))(v43, v53);
    }
  }

  return result;
}

void specialized MostActiveParticipantsController.markParticipantAsOffline(_:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v27[1] = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v30 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v28 = v7;
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_2();
  v8 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_0_1();
  v15 = *(v0 + *(v14 + 152));
  (*(v10 + 16))(v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v8);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v16, v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v17 + ((v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v0;
  v32[4] = partial apply for specialized closure #1 in MostActiveParticipantsController.markParticipantAsOffline(_:);
  v32[5] = v17;
  OUTLINED_FUNCTION_5_73();
  v32[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v32[2] = v18;
  v32[3] = &block_descriptor_92;
  v19 = _Block_copy(v32);
  v20 = v15;

  static DispatchQoS.unspecified.getter();
  v31 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_228();
  _s10Foundation4UUIDVACSHAAWlTm_10(v21, v22);
  OUTLINED_FUNCTION_48_22();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_47_20(v23);
  OUTLINED_FUNCTION_26_32();
  v24 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v24);
  _Block_release(v19);

  v25 = OUTLINED_FUNCTION_181();
  v26(v25);
  (*(v28 + 8))(v1, v29);

  OUTLINED_FUNCTION_30_0();
}

void specialized closure #1 in MostActiveParticipantsController.markParticipantAsOffline(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = (*(*static Defaults.shared + 432))();
  *&v7[v4[9]] = 0;
  *&v7[v4[10]] = v9;
  v7[v4[11]] = 0;
  *&v7[v4[12]] = 1065353216;
  *&v7[v4[13]] = 0;
  *&v7[v4[14]] = 0;
  v10 = *(*a2 + 128);
  v11 = swift_beginAccess();
  v12 = *(a2 + v10);
  MEMORY[0x1EEE9AC00](v11);
  *(&v21 - 2) = a1;

  v13 = specialized Collection.firstIndex(where:)(partial apply for specialized closure #1 in closure #1 in MostActiveParticipantsController.update(_:mediaPriorities:), (&v21 - 4), v12);
  v15 = v14;

  if (v15)
  {
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v16 = *(*(a2 + v10) + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v16);
    v17 = *(a2 + v10);
    *(v17 + 16) = v16 + 1;
    outlined init with copy of Participant?(v7, v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
    *(a2 + v10) = v17;
LABEL_9:
    swift_endAccess();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
    return;
  }

  swift_beginAccess();
  v18 = *(a2 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v10) = v18;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  specialized _ArrayBuffer._consumeAndCreateNew()();
  v18 = v20;
  *(a2 + v10) = v20;
  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v13 < *(v18 + 16))
  {
    outlined assign with copy of MostActiveParticipantsController<UUID>.ActivityDetails(v7, v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13);
    *(a2 + v10) = v18;
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
}

uint64_t specialized closure #1 in closure #1 in MostActiveParticipantsController.update(_:mediaPriorities:)()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_11_111();
  _s10Foundation4UUIDVACSHAAWlTm_10(v0, v1);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized closure #1 in MostActiveParticipantsController.updateActiveParticipantsEMA()(void (*a1)(char *, float, float, float), float a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
  v9 = swift_projectBox();
  swift_beginAccess();
  (*(v5 + 16))(v7, v9, v4);
  a1(v7, a2, *(v9 + *(v8 + 52)), *(v9 + *(v8 + 56)));
  return (*(v5 + 8))(v7, v4);
}

uint64_t specialized MostActiveParticipantsController.applyProminenceWeights(sortedParticipants:)(uint64_t a1)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_G7elementtMd);
  MEMORY[0x1EEE9AC00](v45);
  v3 = (&v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v40 - v5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
  v6 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - v14;
  v16 = *(a1 + 16);
  if (v16 > 2)
  {
    v41 = v13;
    v43 = v12;
    v47 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v24 = 0;
    v17 = v47;
    v42 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v25 = a1 + v42;
    v26 = &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd;
    v40 = *(v6 + 72);
    do
    {
      v27 = v26;
      v29 = v44;
      v28 = v45;
      v30 = *(v45 + 48);
      outlined init with copy of Participant?(v25, &v44[v30], v27);
      *v3 = v24;
      v31 = *(v28 + 48);
      outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(&v29[v30], v3 + v31, v27);
      v32 = v3 + v31;
      v26 = v27;
      v33 = v41;
      v34 = outlined init with copy of Participant?(v32, v41, v26);
      if (v24 == 2)
      {
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        (*(*static Defaults.shared + 464))();
      }

      else if (v24 == 1)
      {
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        (*(*static Defaults.shared + 456))();
      }

      else if (v24)
      {
        if (one-time initialization token for shared != -1)
        {
          v34 = swift_once();
        }

        v35 = (*(*static Defaults.shared + 472))(v34);
      }

      else
      {
        if (one-time initialization token for shared != -1)
        {
          v34 = swift_once();
        }

        (*(*static Defaults.shared + 448))(v34);
      }

      *(v33 + *(v46 + 48)) = v35;
      v36 = v43;
      outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v33, v43, v26);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_sSi6offset_15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_G7elementtMd);
      v47 = v17;
      v37 = *(v17 + 16);
      if (v37 >= *(v17 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v36 = v43;
        v17 = v47;
      }

      ++v24;
      *(v17 + 16) = v37 + 1;
      v38 = v40;
      outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v36, v17 + v42 + v37 * v40, v26);
      v25 += v38;
    }

    while (v16 != v24);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
    if (v16)
    {
      v47 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v17 = v47;
      v45 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v18 = a1 + v45;
      v19 = &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd;
      v44 = *(v6 + 72);
      do
      {
        outlined init with copy of Participant?(v18, v10, v19);
        outlined init with copy of Participant?(v10, v15, v19);
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v20 = (*(*static Defaults.shared + 472))();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, v19);
        *&v15[*(v46 + 48)] = v20;
        v47 = v17;
        v21 = v19;
        v22 = *(v17 + 16);
        if (v22 >= *(v17 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v17 = v47;
        }

        *(v17 + 16) = v22 + 1;
        v23 = v44;
        outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v15, v17 + v45 + v22 * v44, v21);
        v18 += v23;
        --v16;
        v19 = v21;
      }

      while (v16);
    }
  }

  return v17;
}

BOOL specialized MostActiveParticipantsController.shouldPostMostActiveParticipantsDidChange(oldParticipantsDetails:newParticipantsDetails:)(uint64_t a1, char **a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
  v64 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v63 = &v56 - v6;
  v7 = type metadata accessor for UUID();
  v65 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v60 = (&v56 - v11);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v2 + *(*v2 + 19));
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12, v14);
  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if ((v19 & 1) == 0)
  {
    goto LABEL_29;
  }

  v20 = *(*v2 + 15);
  swift_beginAccess();
  v21 = *(v2 + v20);

  v22 = specialized Collection.prefix(_:)(v21, a1);
  v62 = v24;
  v26 = v25 >> 1;
  v12 = (v25 >> 1) - v23;
  if (__OFSUB__(v25 >> 1, v23))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v27 = v2;
  v61 = a2;
  if (v12)
  {
    v28 = v23;
    v59 = v22;
    v66 = MEMORY[0x1E69E7CC0];
    v2 = &v66;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (v12 < 0)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v57 = v20;
    v58 = v27;
    v29 = v66;
    v30 = (v65 + 32);
    v2 = v60;
    while (v28 < v26)
    {
      v31 = v63;
      outlined init with copy of Participant?(v62 + *(v64 + 72) * v28, v63, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
      v32 = *v30;
      (*v30)(v2, v31, v7);
      v66 = v29;
      v33 = *(v29 + 2);
      v12 = v33 + 1;
      if (v33 >= *(v29 + 3) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v2 = v60;
        v29 = v66;
      }

      *(v29 + 2) = v12;
      v32(&v29[((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v33], v2, v7);
      if (v26 == ++v28)
      {
        v60 = v29;
        swift_unknownObjectRelease();
        v20 = v57;
        v27 = v58;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  swift_unknownObjectRelease();
  v60 = MEMORY[0x1E69E7CC0];
LABEL_12:
  v34 = *(v27 + v20);
  v2 = v61;

  v35 = specialized Collection.prefix(_:)(v34, v2);
  v62 = v37;
  v39 = v38 >> 1;
  v12 = (v38 >> 1) - v36;
  if (__OFSUB__(v38 >> 1, v36))
  {
    goto LABEL_31;
  }

  v40 = v35;
  if (v12)
  {
    v41 = v36;
    v66 = MEMORY[0x1E69E7CC0];
    v2 = &v66;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (v12 < 0)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v61 = v40;
    v2 = v66;
    v42 = (v65 + 32);
    while (v41 < v39)
    {
      v43 = v63;
      outlined init with copy of Participant?(v62 + *(v64 + 72) * v41, v63, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
      v44 = *v42;
      (*v42)(v9, v43, v7);
      v66 = v2;
      v45 = v2[2];
      v12 = v45 + 1;
      if (v45 >= v2[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v2 = v66;
      }

      v2[2] = v12;
      v44(v2 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v45, v9, v7);
      if (v39 == ++v41)
      {
        swift_unknownObjectRelease();
        goto LABEL_22;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  swift_unknownObjectRelease();
  v2 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v9 = v60;
  _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4UUIDV_Tt1g5();
  LOBYTE(v12) = v46;
  if ((v46 & 1) == 0)
  {
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_25:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1BC4BAA20;
      v66 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGMd);
      v48 = String.init<A>(reflecting:)();
      v50 = v49;
      v51 = MEMORY[0x1E69E6158];
      *(v47 + 56) = MEMORY[0x1E69E6158];
      v52 = lazy protocol witness table accessor for type String and conformance String();
      *(v47 + 64) = v52;
      *(v47 + 32) = v48;
      *(v47 + 40) = v50;
      v66 = v2;
      v53 = String.init<A>(reflecting:)();
      *(v47 + 96) = v51;
      *(v47 + 104) = v52;
      *(v47 + 72) = v53;
      *(v47 + 80) = v54;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
      goto LABEL_26;
    }

LABEL_34:
    swift_once();
    goto LABEL_25;
  }

LABEL_26:

  return (v12 & 1) == 0;
}

uint64_t default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E69E7F28];
  type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_7_0();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t specialized closure #1 in MostActiveParticipantsController.startEMATimerIfNecessary()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    specialized MostActiveParticipantsController.updateActiveParticipantsEMA()();
    if (specialized MostActiveParticipantsController.activityDetailsAboveThreshold()())
    {
      specialized MostActiveParticipantsController.checkForMostActiveParticipantChange(shouldPostCallback:)(1);
    }
  }

  return result;
}

uint64_t specialized MostActiveParticipantsController.activityDetailsAboveThreshold()()
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
  v1 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v3 = &v29[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v29[-v8];
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v0 + *(*v0 + 152));
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10, v12);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v14, v10);
  if (v17)
  {
    v31 = v6;
    v19 = *(*v0 + 112);
    swift_beginAccess();
    outlined init with copy of Participant?(v0 + v19, v9, &_s10Foundation4UUIDVSgMd);
    v20 = type metadata accessor for UUID();
    v30 = __swift_getEnumTagSinglePayload(v9, 1, v20) != 1;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s10Foundation4UUIDVSgMd);
    v21 = *(*v0 + 128);
    swift_beginAccess();
    v22 = *(v0 + v21);
    v23 = *(v22 + 16);

    for (i = 0; ; ++i)
    {
      if (v23 == i)
      {

        v26 = 1;
        v27 = v31;
        v28 = v30;
LABEL_11:
        __swift_storeEnumTagSinglePayload(v27, v26, 1, v32);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GSgMd);
        return v28;
      }

      if (i >= *(v22 + 16))
      {
        break;
      }

      outlined init with copy of Participant?(v22 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * i, v3, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
      v25 = *&v3[*(v32 + 36)];
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if ((*(*static Defaults.shared + 488))() < v25)
      {

        v27 = v31;
        outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v3, v31, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
        v26 = 0;
        v28 = 1;
        goto LABEL_11;
      }

      result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)()
{
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_228();
  _s10Foundation4UUIDVACSHAAWlTm_10(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v2, &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t one-time initialization function for conversationStateManager()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.conversationStateManager);
  __swift_project_value_buffer(v0, static Logger.conversationStateManager);
  return Logger.init(subsystem:category:)();
}

void ConversationStateManager.init(call:callCenter:defaults:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v247 = v3;
  v238 = v4;
  v6 = v5;
  v245 = v7;
  v9 = v8;
  ObjectType = swift_getObjectType();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v221 = v11;
  v222 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_40();
  v219 = v12;
  OUTLINED_FUNCTION_4_24();
  v220 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v218 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_40();
  v217 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  v223 = &v214 - v18;
  OUTLINED_FUNCTION_4_24();
  isUniquelyReferenced_nonNull_native = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v249 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v216 = &v214 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_32();
  v224 = v24;
  v215 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_32();
  v225 = v27;
  v28 = OUTLINED_FUNCTION_4_24();
  v248 = type metadata accessor for Participant(v28);
  OUTLINED_FUNCTION_1();
  v232 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_40();
  v250 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  OUTLINED_FUNCTION_22(v32);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_140_0();
  *&v0[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_cancellables] = MEMORY[0x1E69E7CD0];
  v246 = type metadata accessor for ConversationController(0);
  v34 = objc_opt_self();
  v241 = v9;
  swift_unknownObjectRetain();
  v35 = [v34 sharedInstance];
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_94;
  }

  while (1)
  {
    v36 = static PlaceholderCallCenter.shared;
    v37 = type metadata accessor for CallCenter();
    v38 = objc_allocWithZone(v37);
    v39 = v36;
    v40 = OUTLINED_FUNCTION_170();
    v42 = CallCenter.init(callCenter:placeholderCallCenter:shouldRegisterForMediaControllerChanges:shouldRegisterForReactionsControllerChanges:)(v40, v41, 1, 1);
    v257 = v37;
    v258 = &protocol witness table for CallCenter;
    *&v255 = v42;
    v273 = 0;
    memset(v272, 0, sizeof(v272));
    v270 = &type metadata for DefaultParticipantMediaProviderCreator;
    v271 = &protocol witness table for DefaultParticipantMediaProviderCreator;
    OUTLINED_FUNCTION_20();
    *&v268 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v266 = &type metadata for DefaultParticipantCaptionsProviderCreator;
    v267 = &protocol witness table for DefaultParticipantCaptionsProviderCreator;
    OUTLINED_FUNCTION_24();
    v263 = swift_allocObject();
    *(v263 + 24) = 0;
    swift_unknownObjectWeakInit();
    v43 = [objc_opt_self() sharedManager];
    type metadata accessor for IDSCapabilitiesChecker();
    v44 = swift_allocObject();
    v262[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUIDSLookupManager);
    v262[4] = &protocol witness table for TUIDSLookupManager;
    v262[0] = v43;
    OUTLINED_FUNCTION_11_111();
    _s10Foundation4UUIDVACSHAAWlTm_10(v45, v46);
    v47 = MEMORY[0x1E69E7CC0];
    v44[2] = Dictionary.init(dictionaryLiteral:)();
    v44[3] = Dictionary.init(dictionaryLiteral:)();
    v44[5] = 0;
    swift_unknownObjectWeakInit();
    v44[6] = v47;
    outlined init with copy of IDSLookupManager(v262, (v44 + 7));
    v48 = [objc_opt_self() defaultCenter];
    [v48 addObserver:v44 selector:sel_handleLookupManagerDidChangeNotification_ name:*MEMORY[0x1E69D8FA0] object:v43];

    __swift_destroy_boxed_opaque_existential_1(v262);
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    v49 = static Defaults.shared;
    v50 = v241;
    v51 = swift_getObjectType();

    v52 = v245;
    v244 = v51;
    specialized ConversationController.__allocating_init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(v50, &v255, &v268, &v263, 1, v272, 1, v44, v49, &protocol witness table for Defaults, v246, v51, v245, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224);
    *&v2[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_conversationController] = v53;
    *&v2[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_callCenter] = v6;
    v54 = v53;
    v55 = v6;
    v6 = v2;
    v2 = v54;
    v56 = v55;
    v57 = [v56 neighborhoodActivityConduit];
    *&v6[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_conduit] = v57;
    v230 = v57;
    v240 = v56;
    v58 = [v56 videoDeviceController];
    v231 = OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_localVideoController;
    *&v6[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_localVideoController] = v58;
    v59 = &v6[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_defaults];
    v60 = v247;
    *v59 = v238;
    *(v59 + 1) = v60;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSTimer);
    v61 = objc_opt_self();
    v62 = v50;
    swift_unknownObjectRetain();
    v63 = [v61 mainRunLoop];
    v64 = type metadata accessor for NSRunLoop.SchedulerOptions();
    __swift_storeEnumTagSinglePayload(v1, 1, 1, v64);
    v65 = static NSTimer.publish(every:tolerance:on:in:options:)();

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
    v235 = v6;
    *&v6[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_callDurationStringTimer] = v65;
    closure #1 in ConversationStateManager.init(call:callCenter:defaults:)(v50, v52, &v255);
    v236 = v255;
    v237 = v256;
    v242 = v2;
    ConversationController.lookupActiveConversation()();
    outlined init with copy of Participant?(v272, &v255, &_s15ConversationKit0A0_pSgMd);
    v233 = isUniquelyReferenced_nonNull_native;
    if (v257)
    {
      break;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v255, &_s15ConversationKit0A0_pSgMd);
LABEL_33:
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9CNContactCSgMd);
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
    v247 = Dictionary.init(dictionaryLiteral:)();
    v96 = [v240 callWithStatus_];
    if (v96)
    {
      v97 = v96;
      v99 = v244;
      v98 = v245;
      v100 = OUTLINED_FUNCTION_48_0();
      v102 = v101(v100);
      v226 = v103;
      v227 = v102;
    }

    else
    {
      v226 = 0;
      v227 = 0;
      v99 = v244;
      v98 = v245;
    }

    v104 = OUTLINED_FUNCTION_48_0();
    v106 = v105(v104);
    v107 = 1;
    if ((v106 & 1) == 0)
    {
      v107 = 2;
    }

    v246 = v107;
    OUTLINED_FUNCTION_48_0();
    Call.displayStatus.getter(v108, v109);
    LOWORD(v262[0]) = v263;
    HIDWORD(v262[0]) = HIDWORD(v263);
    v110 = OUTLINED_FUNCTION_48_0();
    LODWORD(v243) = v111(v110);
    v112 = OUTLINED_FUNCTION_48_0();
    LODWORD(v234) = v113(v112);
    v268 = v236;
    v269 = v237;
    v260 = v62;
    v114 = *(v98 + 8);
    v115 = *(v114 + 16);
    outlined copy of CallDisplayInfo(v236, *(&v236 + 1), v237);
    v116 = v115(v99, v114);
    v228 = v117;
    v229 = v116;
    outlined init with copy of Participant?(v272, &v255, &_s15ConversationKit0A0_pSgMd);
    v118 = v257;
    if (v257)
    {
      v119 = v258;
      __swift_project_boxed_opaque_existential_1(&v255, v257);
      v118 = (*(v119 + 6))(v118, v119);
      __swift_destroy_boxed_opaque_existential_1(&v255);
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v255, &_s15ConversationKit0A0_pSgMd);
    }

    v120 = ConversationController.isOneToOneModeEnabled.getter();
    v121 = v241;
    Call.isCallingEmergencyServices.getter(v244, v245);
    v123 = v122;
    outlined init with copy of Participant?(v272, &v255, &_s15ConversationKit0A0_pSgMd);
    v124 = v257;
    if (v257)
    {
      v125 = v258;
      __swift_project_boxed_opaque_existential_1(&v255, v257);
      (*(v125 + 31))(v124, v125);
      __swift_destroy_boxed_opaque_existential_1(&v255);
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v255, &_s15ConversationKit0A0_pSgMd);
    }

    v126 = v245;
    (*(v245 + 176))(v244, v245);
    v6 = v242;
    ConversationController.shouldShowRTTUpgrade.getter();
    type metadata accessor for ConversationPresentationStateProvider();
    swift_allocObject();
    v127 = ConversationPresentationStateProvider.init(avMode:callDisplayStatus:isSendingVideo:isMuted:callDisplayInfo:callDurationString:image:isOneToOneModeEnabled:isEmergency:heldCallDisplayName:contactsByHandle:ignoreLetMeInRequests:isRTTCall:shouldShowRTTUpgrade:unknownHandlesBlocked:)(v246, v262, v243 & 1, v234 & 1, &v268, v229, v228, v118, v120 & 1, v123 & 1);
    v128 = &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GGMd;
    v2 = v235;
    *&v235[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_presentationStateProvider] = v127;
    v129 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
    OUTLINED_FUNCTION_4_0();
    v130 = v250;
    outlined init with copy of Participant(&v6[v129], v250);
    v131 = *&v2[v231];
    TUVideoDeviceController.currentCameraEffectsState.getter(&v255);

    LODWORD(v268) = v255;
    type metadata accessor for ConversationLocalParticipantStateProvider();
    swift_allocObject();
    *&v2[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_localParticipantStateProvider] = ConversationLocalParticipantStateProvider.init(localParticipant:localParticipantCameraEffectsState:isMutedTalking:isReacting:)(v130, &v268, 0, 0);
    OUTLINED_FUNCTION_4_0();
    type metadata accessor for ConversationRemoteParticipantsStateProvider();
    swift_allocObject();

    *&v2[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_remoteParticipantsStateProvider] = ConversationRemoteParticipantsStateProvider.init(remoteParticipants:)();
    v132 = type metadata accessor for CaptioningStateManager();
    v133 = one-time initialization token for shared;
    swift_unknownObjectRetain();
    if (v133 != -1)
    {
      swift_once();
    }

    v134 = static ConversationCapabilities.shared;
    *&v2[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_captioningStateManager] = specialized CaptioningStateManager.__allocating_init(capabilities:call:)(v134, v121, v132, v244, v126);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd);
    v135 = (*(v232 + 80) + 32) & ~*(v232 + 80);
    v247 = *(v232 + 72);
    v136 = swift_allocObject();
    *(v136 + 16) = xmmword_1BC4BA940;
    outlined init with copy of Participant(&v6[v129], v136 + v135);
    *&v255 = v136;

    specialized Array.append<A>(contentsOf:)(v137);
    v138 = v255;
    v139 = *(v255 + 16);
    if (v139)
    {
      *&v255 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v140 = v255;
      v246 = v138;
      v141 = v138 + v135;
      v142 = (v249 + 16);
      v6 = (v249 + 32);
      isUniquelyReferenced_nonNull_native = v233;
      v143 = v225;
      do
      {
        v144 = v250;
        outlined init with copy of Participant(v141, v250);
        (*v142)(v143, &v144[*(v248 + 20)], isUniquelyReferenced_nonNull_native);
        outlined destroy of Participant(v144);
        *&v255 = v140;
        v145 = *(v140 + 16);
        if (v145 >= *(v140 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v140 = v255;
        }

        *(v140 + 16) = v145 + 1;
        OUTLINED_FUNCTION_25_57();
        (*(v147 + 32))(v146 + *(v147 + 72) * v145, v143, isUniquelyReferenced_nonNull_native);
        v141 += v247;
        --v139;
      }

      while (v139);

      v2 = v235;
      v128 = &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GGMd;
    }

    else
    {

      isUniquelyReferenced_nonNull_native = v233;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerCy10Foundation4UUIDVGMd);
    swift_allocObject();
    specialized MostActiveParticipantsController.init(participantIdentifiers:configuration:)();
    *&v2[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_mostActiveParticipantsController] = v148;
    v261.receiver = v2;
    v261.super_class = ObjectType;
    v149 = objc_msgSendSuper2(&v261, sel_init);
    v150 = *&v149[v128[368]];
    OUTLINED_FUNCTION_3_5();
    *(v150 + 144) = &protocol witness table for ConversationStateManager;
    swift_unknownObjectWeakAssign();
    v151 = *&v149[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_localParticipantStateProvider];
    OUTLINED_FUNCTION_3_5();
    *(v151 + 56) = &protocol witness table for ConversationStateManager;
    swift_unknownObjectWeakAssign();
    v152 = *&v149[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_remoteParticipantsStateProvider];
    OUTLINED_FUNCTION_3_5();
    *(v152 + 48) = &protocol witness table for ConversationStateManager;
    swift_unknownObjectWeakAssign();
    v153 = v149;

    CaptioningStateManager.captionsRecognizerStateManager.setter();

    ConversationStateManager.registerForCallStateUpdates()();
    ConversationStateManager.registerConversationControllerCallbacks()();
    v246 = v153;
    ConversationStateManager.registerForMostActiveParticipantControllerCallbacks()();
    v154 = v242;
    ConversationController.lookupActiveConversation()();
    if (!v270)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v268, &_s15ConversationKit0A0_pSgMd);
      v185 = OUTLINED_FUNCTION_30_39();
      v187 = v186(v185);
      v188 = [v187 isTelephonyProvider];

      if (v188)
      {
        v189 = v223;
        v190 = OUTLINED_FUNCTION_30_39();
        v191(v190);
        if (__swift_getEnumTagSinglePayload(v189, 1, isUniquelyReferenced_nonNull_native) == 1)
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v189, &_s10Foundation4UUIDVSgMd);
          v192 = OUTLINED_FUNCTION_30_39();
          v194 = v193(v192);
          v195 = specialized _copyCollectionToContiguousArray<A>(_:)(v194);

          ConversationStateManager.updateDisplayProperties(using:)(v195);

          OUTLINED_FUNCTION_49_25();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v272, &_s15ConversationKit0A0_pSgMd);
        }

        else
        {
          v196 = v249;
          v197 = *(v249 + 32);
          v198 = v224;
          v197(v224, v189, isUniquelyReferenced_nonNull_native);
          v250 = [v240 queue];
          OUTLINED_FUNCTION_20();
          v199 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v200 = v216;
          (*(v196 + 16))(v216, v198, isUniquelyReferenced_nonNull_native);
          v201 = isUniquelyReferenced_nonNull_native;
          v202 = (*(v196 + 80) + 24) & ~*(v196 + 80);
          v203 = swift_allocObject();
          *(v203 + 16) = v199;
          v197(v203 + v202, v200, v201);
          v258 = partial apply for closure #5 in ConversationStateManager.init(call:callCenter:defaults:);
          v259 = v203;
          *&v255 = MEMORY[0x1E69E9820];
          *(&v255 + 1) = 1107296256;
          OUTLINED_FUNCTION_6_5();
          v256 = v204;
          v257 = &block_descriptor_126;
          v205 = _Block_copy(&v255);

          v206 = v217;
          static DispatchQoS.unspecified.getter();
          *&v268 = MEMORY[0x1E69E7CC0];
          OUTLINED_FUNCTION_0_228();
          _s10Foundation4UUIDVACSHAAWlTm_10(v207, v208);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
          OUTLINED_FUNCTION_3_8();
          lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v209, &_sSay8Dispatch0A13WorkItemFlagsVGMd);
          v210 = v219;
          v211 = v222;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v212 = v250;
          MEMORY[0x1BFB215C0](0, v206, v210, v205);
          _Block_release(v205);

          OUTLINED_FUNCTION_49_25();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          (*(v221 + 8))(v210, v211);
          (*(v218 + 8))(v206, v220);
          (*(v196 + 8))(v224, v233);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v272, &_s15ConversationKit0A0_pSgMd);
        }
      }

      else
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v272, &_s15ConversationKit0A0_pSgMd);

        OUTLINED_FUNCTION_49_25();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

LABEL_85:
      OUTLINED_FUNCTION_30_0();
      return;
    }

    outlined init with take of TapInteractionHandler(&v268, &v255);
    __swift_project_boxed_opaque_existential_1(&v255, v257);
    v155 = OUTLINED_FUNCTION_36_41();
    v1 = v156(v155);
    v157 = specialized Set.count.getter(v1);
    if (!v157)
    {

      v184 = MEMORY[0x1E69E7CC0];
LABEL_82:
      ConversationStateManager.updateDisplayProperties(using:)(v184);

      OUTLINED_FUNCTION_49_25();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v272, &_s15ConversationKit0A0_pSgMd);
      __swift_destroy_boxed_opaque_existential_1(&v255);
      goto LABEL_85;
    }

    v158 = v157;
    v254 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v251 = specialized Set.startIndex.getter(v1);
    v252 = v159;
    v253 = v160 & 1;
    if (v158 < 0)
    {
      goto LABEL_96;
    }

    v161 = 0;
    OUTLINED_FUNCTION_44_22();
    v249 = v162;
    v250 = v163;
    v247 = v1 + 64;
    v248 = v1 + 56;
    while (1)
    {
      v75 = __OFADD__(v161++, 1);
      if (v75)
      {
        break;
      }

      v164 = v251;
      v6 = v252;
      v165 = v253;
      v166 = OUTLINED_FUNCTION_5_81();
      specialized Set.subscript.getter(v166, v167, v165, v1);
      v169 = v168;
      isUniquelyReferenced_nonNull_native = [v168 handle];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v2 = *(v254 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v250)
      {
        if (!v165)
        {
          goto LABEL_98;
        }

        OUTLINED_FUNCTION_5_81();
        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo20TUConversationMemberC_GMd);
        v173 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        v173(&v268, 0);
      }

      else
      {
        if (v165)
        {
          goto LABEL_100;
        }

        if (v164 < 0)
        {
          goto LABEL_91;
        }

        v170 = 1 << *(v1 + 32);
        if (v164 >= v170)
        {
          goto LABEL_91;
        }

        v171 = *(v248 + 8 * (v164 >> 6));
        if (((v171 >> v164) & 1) == 0)
        {
          goto LABEL_92;
        }

        if (*(v1 + 36) != v6)
        {
          goto LABEL_93;
        }

        v172 = v171 & (-2 << (v164 & 0x3F));
        if (v172)
        {
          v170 = __clz(__rbit64(v172)) | v164 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          OUTLINED_FUNCTION_42_34();
          v177 = (v247 + 8 * v176);
          while (v175 < v174)
          {
            v178 = *v177++;
            isUniquelyReferenced_nonNull_native = v178;
            v165 += 64;
            ++v175;
            if (v178)
            {
              v179 = OUTLINED_FUNCTION_5_81();
              outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v179, v180, 0);
              v170 = __clz(__rbit64(isUniquelyReferenced_nonNull_native)) + v165;
              goto LABEL_75;
            }
          }

          v181 = OUTLINED_FUNCTION_5_81();
          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v181, v182, 0);
        }

LABEL_75:
        v183 = *(v1 + 36);
        v251 = v170;
        v252 = v183;
        v253 = 0;
      }

      if (v161 == v158)
      {

        outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v251, v252, v253);
        v184 = v254;
        goto LABEL_82;
      }
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(&v255, v257);
  v66 = OUTLINED_FUNCTION_36_41();
  v1 = v67(v66);
  v68 = specialized Set.count.getter(v1);
  if (!v68)
  {

LABEL_32:
    __swift_destroy_boxed_opaque_existential_1(&v255);

    goto LABEL_33;
  }

  v69 = v68;
  v262[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  v263 = specialized Set.startIndex.getter(v1);
  v264 = v70;
  v265 = v71 & 1;
  if ((v69 & 0x8000000000000000) == 0)
  {
    v72 = 0;
    OUTLINED_FUNCTION_44_22();
    v246 = v73;
    v247 = v74;
    v243 = v1 + 56;
    v234 = v1 + 64;
    while (1)
    {
      v75 = __OFADD__(v72++, 1);
      if (v75)
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = v263;
      v6 = v264;
      v76 = v265;
      v77 = OUTLINED_FUNCTION_41_30();
      specialized Set.subscript.getter(v77, v78, v76, v1);
      v80 = v79;
      v2 = [v79 handle];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v81 = *(v262[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v247)
      {
        if (!v76)
        {
          goto LABEL_97;
        }

        OUTLINED_FUNCTION_41_30();
        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        }

        else
        {
          isUniquelyReferenced_nonNull_native = 1;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo20TUConversationMemberC_GMd);
        v85 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        v85(&v268, 0);
      }

      else
      {
        if (v76)
        {
          goto LABEL_99;
        }

        if (isUniquelyReferenced_nonNull_native < 0)
        {
          goto LABEL_88;
        }

        v82 = 1 << *(v1 + 32);
        if (isUniquelyReferenced_nonNull_native >= v82)
        {
          goto LABEL_88;
        }

        v83 = *(v243 + 8 * (isUniquelyReferenced_nonNull_native >> 6));
        if (((v83 >> isUniquelyReferenced_nonNull_native) & 1) == 0)
        {
          goto LABEL_89;
        }

        if (*(v1 + 36) != v6)
        {
          goto LABEL_90;
        }

        v84 = v83 & (-2 << (isUniquelyReferenced_nonNull_native & 0x3F));
        if (v84)
        {
          v82 = __clz(__rbit64(v84)) | isUniquelyReferenced_nonNull_native & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          OUTLINED_FUNCTION_42_34();
          v89 = (v234 + 8 * v88);
          while (v87 < v86)
          {
            v90 = *v89++;
            v2 = v90;
            v81 += 64;
            ++v87;
            if (v90)
            {
              v91 = OUTLINED_FUNCTION_41_30();
              outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v91, v92, 0);
              v82 = __clz(__rbit64(v2)) + v81;
              goto LABEL_27;
            }
          }

          v93 = OUTLINED_FUNCTION_41_30();
          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v93, v94, 0);
        }

LABEL_27:
        v95 = *(v1 + 36);
        v263 = v82;
        v264 = v95;
        v265 = 0;
      }

      if (v72 == v69)
      {

        outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v263, v264, v265);
        v62 = v241;
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_87;
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
}

uint64_t closure #1 in ConversationStateManager.init(call:callCenter:defaults:)@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(void, void)@<X1>, uint64_t a3@<X8>)
{
  v5 = static ConversationStateManager.displayName(call:conversationController:)(a1, a2);
  v7 = v6;
  ObjectType = swift_getObjectType();
  result = a2[15](ObjectType, a2);
  if (result)
  {
    *a3 = v5;
    *(a3 + 8) = v7;
    *(a3 + 16) = 0;
  }

  else
  {

    result = Call.continuityCall.getter(ObjectType, a2);
    if (result)
    {
      *a3 = result;
      *(a3 + 8) = 0;
      v10 = 1;
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      v10 = 4;
    }

    *(a3 + 16) = v10;
  }

  return result;
}

uint64_t static ConversationStateManager.displayName(call:conversationController:)(uint64_t a1, uint64_t (**a2)(void, void))
{
  ObjectType = swift_getObjectType();
  v4 = a2[23](ObjectType, a2);
  v5 = [v4 isTelephonyProvider];

  if (v5)
  {
    return a2[9](ObjectType, a2);
  }

  if ((a2[15](ObjectType, a2) & 1) == 0 || (v6 = ConversationController.conversationDisplayName.getter(), !v7))
  {
    v9 = [objc_opt_self() conversationKit];
    v14._object = 0xE000000000000000;
    v10._countAndFlagsBits = 0x454D495445434146;
    v11.value._countAndFlagsBits = 0x61737265766E6F43;
    v11.value._object = 0xEF74694B6E6F6974;
    v10._object = 0xE800000000000000;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v14._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v14)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  return v6;
}

id Call.continuityCall.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v56 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v44 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v44 - v17;
  v54 = *(a2 + 56);
  v54(a1, a2, v16);
  UUID.init(uuidString:)();

  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s10Foundation4UUIDVSgMd);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v18, v10, v11);
    v20 = closure #1 in Call.continuityCall.getter();
    v50 = v21;
    v51 = v20;
    v49 = closure #2 in Call.continuityCall.getter();
    v48 = closure #3 in Call.continuityCall.getter();
    v52 = v12;
    v53 = v14;
    (*(v12 + 16))(v14, v18, v11);
    v22 = (*(a2 + 504))(a1, a2);
    if (v22)
    {
      v23 = v22;
      v24 = [v22 UUID];

      v25 = v55;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = 0;
    }

    else
    {
      v26 = 1;
      v25 = v55;
    }

    __swift_storeEnumTagSinglePayload(v25, v26, 1, v11);
    (*(a2 + 64))(a1, a2);
    v47 = (*(a2 + 208))(a1, a2);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
    v27 = (*(a2 + 376))(a1, a2);
    isa = NSNumber.init(BOOLeanLiteral:)(v27 & 1).super.super.isa;
    v28 = (*(a2 + 328))(a1, a2);
    v45 = NSNumber.init(BOOLeanLiteral:)(v28 & 1).super.super.isa;
    v29 = (v54)(a1, a2);
    v31 = v30;
    v32 = (*(a2 + 72))(a1, a2);
    v34 = v33;
    v35 = Dictionary.init(dictionaryLiteral:)();
    objc_opt_self();
    v36 = swift_dynamicCastObjCClass();
    v37 = v52;
    if (v36)
    {
      v38 = [v36 isBlocked];
    }

    else
    {
      v38 = 0;
    }

    v39 = v53;
    v40 = objc_allocWithZone(MEMORY[0x1E69D8B18]);
    v41 = @nonobjc TUContinuityCallInfo.init(callIdentifier:callerIdSubstring:displayName:isBranded:isEmergency:contactIdentifiersByHandle:senderIdentityShortName:senderIdentityName:handlesHash:handlesBlocked:)(v29, v31, v51, v50, v32, v34, v49 & 1, v48 & 1, v35, 0, 0, 0, 0, 0, 0xF000000000000000, v38);
    v42 = objc_allocWithZone(MEMORY[0x1E69D8B10]);
    v19 = @nonobjc TUContinuityCall.init(uuid:conversationUUID:callGroupUUID:status:isMuted:isCameraEnabled:callInfo:)(v39, v55, v56, v47, isa, v45, v41);
    (*(v37 + 8))(v18, v11);
  }

  return v19;
}

uint64_t Call.displayStatus.getter@<X0>(uint64_t (**a1)(void, void)@<X1>, uint64_t a2@<X8>)
{
  swift_unknownObjectRetain();

  return CallDisplayStatus.init(call:)(a1, a2);
}

void specialized Call.isCallingEmergencyServices.getter()
{
  v1 = [v0 provider];
  v2 = [v1 isTelephonyProvider];

  if ((v2 & 1) != 0 || (v3 = [v0 provider], v4 = objc_msgSend(v3, sel_isSuperboxProvider), v3, v4))
  {
    v5 = [v0 handle];
    if (v5)
    {
      v6 = v5;
      v7 = [v0 provider];
      v8 = [v7 emergencyHandles];

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = v6;
      MEMORY[0x1EEE9AC00](v10);
      v20[2] = &v21;
      LOBYTE(v7) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v20, v9);

      if (v7)
      {
LABEL_17:
      }

      else
      {
        v11 = [v0 provider];
        v12 = [v11 emergencyLabeledHandles];

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TULabeledHandle);
        v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v14 = specialized Array.count.getter(v13);
        v15 = 0;
        while (1)
        {
          if (v14 == v15)
          {
LABEL_16:

            goto LABEL_17;
          }

          if ((v13 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x1BFB22010](v15, v13);
          }

          else
          {
            if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_19;
            }

            v16 = *(v13 + 8 * v15 + 32);
          }

          v17 = v16;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
          v18 = [v17 handle];
          v19 = static NSObject.== infix(_:_:)();

          ++v15;
          if (v19)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
      }
    }
  }
}

void Call.isCallingEmergencyServices.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 184);
  v5 = v4();
  v6 = [v5 isTelephonyProvider];

  if ((v6 & 1) != 0 || (v7 = (v4)(a1, a2), v8 = [v7 isSuperboxProvider], v7, v8))
  {
    v9 = (*(a2 + 80))(a1, a2);
    if (v9)
    {
      v10 = v9;
      v11 = (v4)(a1, a2);
      v12 = [v11 emergencyHandles];

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = v10;
      MEMORY[0x1EEE9AC00](v14);
      v24[2] = &v25;
      LOBYTE(v11) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v24, v13);

      if (v11)
      {
LABEL_17:
      }

      else
      {
        v15 = (v4)(a1, a2);
        v16 = [v15 emergencyLabeledHandles];

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TULabeledHandle);
        v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v18 = specialized Array.count.getter(v17);
        v19 = 0;
        while (1)
        {
          if (v18 == v19)
          {
LABEL_16:

            goto LABEL_17;
          }

          if ((v17 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x1BFB22010](v19, v17);
          }

          else
          {
            if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_19;
            }

            v20 = *(v17 + 8 * v19 + 32);
          }

          v21 = v20;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
          v22 = [v21 handle];
          v23 = static NSObject.== infix(_:_:)();

          ++v19;
          if (v23)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
      }
    }
  }
}

id TUVideoDeviceController.currentCameraEffectsState.getter@<X0>(char *a1@<X8>)
{
  v3 = [v1 currentInputSupportsCinematicFraming];
  v4 = [v1 isCinematicFramingEnabled];
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2;
  }

  v6 = [v1 supportsCameraBlur];
  v7 = [v1 cameraBlurEnabled];
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 2;
  }

  v9 = [v1 currentInputSupportsStudioLight];
  v10 = [v1 isStudioLightEnabled];
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 2;
  }

  v12 = [v1 currentInputSupportsReactionEffects];
  result = [v1 isReactionEffectGestureEnabled];
  *a1 = v5;
  if (v12)
  {
    v14 = result;
  }

  else
  {
    v14 = 2;
  }

  a1[1] = v8;
  a1[2] = v11;
  a1[3] = v14;
  return result;
}

uint64_t ConversationStateManager.registerForCallStateUpdates()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_So7NSTimerC10FoundationE14TimerPublisherCSo17OS_dispatch_queueCGMd);
  v1 = *(v0 - 8);
  v59 = v0;
  v60 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v58 = &v42 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5MergeVy_So20NSNotificationCenterC10FoundationE9PublisherVAJGMd);
  v4 = *(v3 - 8);
  v54 = v3;
  v55 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC5MergeVy_So20NSNotificationCenterC10FoundationE9PublisherVALGSo17OS_dispatch_queueCGMd);
  v7 = *(v6 - 8);
  v56 = v6;
  v57 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v42 - v10;
  v12 = type metadata accessor for NSNotificationCenter.Publisher();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMd);
  v65 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v19 = &v42 - v18;
  v50 = objc_opt_self();
  v20 = [v50 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v61 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v21 = static OS_dispatch_queue.main.getter();
  v68[0] = v21;
  v63 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v63);
  v62 = _s10Foundation4UUIDVACSHAAWlTm_10(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x1E6969F20]);
  v66 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue);
  v43 = v12;
  Publisher.receive<A>(on:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  v22 = *(v13 + 8);
  v46 = v13 + 8;
  v47 = v22;
  v22(v17, v12);
  swift_allocObject();
  v23 = v49;
  swift_unknownObjectWeakInit();
  v64 = MEMORY[0x1E695BE98];
  v45 = lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<NSNotificationCenter.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMd);
  v24 = v48;
  Publisher<>.sink(receiveValue:)();

  v25 = *(v65 + 8);
  v65 += 8;
  v44 = v25;
  v25(v19, v24);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v26 = v50;
  v27 = [v50 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v28 = static OS_dispatch_queue.main.getter();
  v68[0] = v28;
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v63);
  v29 = v43;
  Publisher.receive<A>(on:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  v47(v17, v29);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  Publisher<>.sink(receiveValue:)();

  v44(v19, v24);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v30 = [v26 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v31 = [v26 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v32 = v52;
  Publishers.Merge.init(_:_:)();
  v33 = static OS_dispatch_queue.main.getter();
  v68[0] = v33;
  v34 = v63;
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v63);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Merge<NSNotificationCenter.Publisher, NSNotificationCenter.Publisher> and conformance Publishers.Merge<A, B>, &_s7Combine10PublishersO5MergeVy_So20NSNotificationCenterC10FoundationE9PublisherVAJGMd);
  v35 = v53;
  v36 = v54;
  Publisher.receive<A>(on:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  (*(v55 + 8))(v32, v36);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.Merge<NSNotificationCenter.Publisher, NSNotificationCenter.Publisher>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC5MergeVy_So20NSNotificationCenterC10FoundationE9PublisherVALGSo17OS_dispatch_queueCGMd);
  v37 = v56;
  Publisher<>.sink(receiveValue:)();

  (*(v57 + 8))(v35, v37);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v68[0] = *(v23 + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_callDurationStringTimer);

  v38 = static OS_dispatch_queue.main.getter();
  v67 = v38;
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v34);
  type metadata accessor for NSTimer.TimerPublisher();
  _s10Foundation4UUIDVACSHAAWlTm_10(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, MEMORY[0x1E6969F70]);
  v39 = v58;
  Publisher.receive<A>(on:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<NSTimer.TimerPublisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_So7NSTimerC10FoundationE14TimerPublisherCSo17OS_dispatch_queueCGMd);
  v40 = v59;
  Publisher<>.sink(receiveValue:)();

  (*(v60 + 8))(v39, v40);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  NSTimer.TimerPublisher.connect()();
  __swift_project_boxed_opaque_existential_1(v68, v68[3]);
  swift_beginAccess();
  Cancellable.store(in:)();
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(v68);
}

uint64_t ConversationStateManager.registerConversationControllerCallbacks()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_conversationController);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant);
  swift_beginAccess();
  v4 = *v3;
  *v3 = partial apply for closure #1 in ConversationStateManager.registerConversationControllerCallbacks();
  v3[1] = v2;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v4);

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForLocalParticipant);
  swift_beginAccess();
  v7 = *v6;
  *v6 = partial apply for closure #2 in ConversationStateManager.registerConversationControllerCallbacks();
  v6[1] = v5;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mutedTalkerDidChange);
  swift_beginAccess();
  v10 = *v9;
  *v9 = partial apply for closure #3 in ConversationStateManager.registerConversationControllerCallbacks();
  v9[1] = v8;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v10);

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidReact);
  swift_beginAccess();
  v13 = *v12;
  *v12 = partial apply for closure #4 in ConversationStateManager.registerConversationControllerCallbacks();
  v12[1] = v11;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v13);

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidStopReacting);
  swift_beginAccess();
  v16 = *v15;
  *v15 = partial apply for closure #5 in ConversationStateManager.registerConversationControllerCallbacks();
  v15[1] = v14;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v16);

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddVisibleParticipant);
  swift_beginAccess();
  v19 = *v18;
  *v18 = partial apply for closure #6 in ConversationStateManager.registerConversationControllerCallbacks();
  v18[1] = v17;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v19);

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddPendingParticipant);
  swift_beginAccess();
  v22 = *v21;
  *v21 = partial apply for closure #7 in ConversationStateManager.registerConversationControllerCallbacks();
  v21[1] = v20;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v22);

  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipant);
  swift_beginAccess();
  v25 = *v24;
  *v24 = partial apply for closure #8 in ConversationStateManager.registerConversationControllerCallbacks();
  v24[1] = v23;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v25);

  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveVisibleParticipant);
  swift_beginAccess();
  v28 = *v27;
  *v27 = partial apply for closure #9 in ConversationStateManager.registerConversationControllerCallbacks();
  v27[1] = v26;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v28);

  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForVisibleParticipant);
  swift_beginAccess();
  v31 = *v30;
  *v30 = partial apply for closure #10 in ConversationStateManager.registerConversationControllerCallbacks();
  v30[1] = v29;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v31);

  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipantScreenInfo);
  swift_beginAccess();
  v34 = *v33;
  *v33 = partial apply for closure #11 in ConversationStateManager.registerConversationControllerCallbacks();
  v33[1] = v32;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v34);

  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantsMediaPrioritiesDidChange);
  swift_beginAccess();
  v37 = *v36;
  *v36 = partial apply for closure #12 in ConversationStateManager.registerConversationControllerCallbacks();
  v36[1] = v35;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v37);

  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingAvailabilityDidChange);
  swift_beginAccess();
  v40 = *v39;
  *v39 = partial apply for closure #13 in ConversationStateManager.registerConversationControllerCallbacks();
  v39[1] = v38;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v40);

  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingEnabledDidChange);
  swift_beginAccess();
  v43 = *v42;
  *v42 = partial apply for closure #14 in ConversationStateManager.registerConversationControllerCallbacks();
  v42[1] = v41;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v43);

  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBlurEnabledDidChange);
  swift_beginAccess();
  v46 = *v45;
  *v45 = partial apply for closure #14 in ConversationStateManager.registerConversationControllerCallbacks();
  v45[1] = v44;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v46);

  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraStudioLightEnabledDidChange);
  swift_beginAccess();
  v49 = *v48;
  *v48 = partial apply for closure #14 in ConversationStateManager.registerConversationControllerCallbacks();
  v48[1] = v47;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v49);

  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraReactionEffectsEnabledDidChange);
  swift_beginAccess();
  v52 = *v51;
  *v51 = partial apply for closure #14 in ConversationStateManager.registerConversationControllerCallbacks();
  v51[1] = v50;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v52);

  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = *v6;
  *v6 = partial apply for closure #18 in ConversationStateManager.registerConversationControllerCallbacks();
  v6[1] = v53;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v54);

  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v56 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateCaptions);
  swift_beginAccess();
  v57 = *v56;
  *v56 = partial apply for closure #19 in ConversationStateManager.registerConversationControllerCallbacks();
  v56[1] = v55;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v57);

  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v59 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_resolvedAudioVideoModeDidChange);
  swift_beginAccess();
  v60 = *v59;
  *v59 = partial apply for closure #20 in ConversationStateManager.registerConversationControllerCallbacks();
  v59[1] = v58;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v60);

  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_oneToOneModeDidChange);
  swift_beginAccess();
  v63 = *v62;
  *v62 = partial apply for closure #21 in ConversationStateManager.registerConversationControllerCallbacks();
  v62[1] = v61;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v63);

  v64 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v65 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callStatusDidChange);
  swift_beginAccess();
  v66 = *v65;
  *v65 = partial apply for closure #22 in ConversationStateManager.registerConversationControllerCallbacks();
  v65[1] = v64;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v66);

  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v68 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationIgnoreLetMeInRequestsDidChange);
  swift_beginAccess();
  v69 = *v68;
  *v68 = partial apply for closure #23 in ConversationStateManager.registerConversationControllerCallbacks();
  v68[1] = v67;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v69);

  v70 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v71 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraPositionDidChange);
  swift_beginAccess();
  v72 = *v71;
  *v71 = partial apply for closure #24 in ConversationStateManager.registerConversationControllerCallbacks();
  v71[1] = v70;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v72);
}

Swift::Void __swiftcall ConversationStateManager.registerForMostActiveParticipantControllerCallbacks()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_mostActiveParticipantsController);
  OUTLINED_FUNCTION_20();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3_5();
  v3 = *(v1 + 16);
  *(v1 + 16) = partial apply for closure #1 in ConversationStateManager.registerForMostActiveParticipantControllerCallbacks();
  *(v1 + 24) = v2;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v3);
}

uint64_t ConversationStateManager.updateDisplayProperties(using:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  ConversationStateManager.updateImage(using:)();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9CNContactCSgMd);
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
  v2 = Dictionary.init(dictionaryLiteral:)();
  ConversationPresentationStateProvider.onContactsByHandleUpdated(_:)(v2);
}

void closure #5 in ConversationStateManager.init(call:callCenter:defaults:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = MEMORY[0x1E69E7CC0];
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_callCenter);

    isa = UUID._bridgeToObjectiveC()().super.isa;
    v5 = [v3 callsWithGroupUUID_];

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = specialized Array.count.getter(v6);
  for (i = 0; v7 != i; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1BFB22010](i, v6);
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v11 = [v9 remoteParticipantHandles];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
    v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Array.append<A>(contentsOf:)(v12);
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    ConversationStateManager.updateDisplayProperties(using:)(v1);
  }
}

uint64_t ConversationStateManager.updateImage(using:)()
{
  ConversationController.lookupActiveConversation()();
  if (!v5)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v4, &_s15ConversationKit0A0_pSgMd);
  }

  outlined init with take of TapInteractionHandler(&v4, v6);
  v0 = v7;
  v1 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9.value.super.isa = (*(v1 + 48))(v0, v1);
  isa = v9.value.super.isa;
  ConversationPresentationStateProvider.onImageUpdated(_:)(v9);

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

id ConversationStateManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConversationStateManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall ConversationStateManager.toggleSendingVideo()()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  v14 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v5 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_20();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15[4] = partial apply for closure #1 in ConversationStateManager.toggleSendingVideo();
  v15[5] = v6;
  OUTLINED_FUNCTION_5_73();
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed () -> ();
  v15[3] = &block_descriptor_14_3;
  v7 = _Block_copy(v15);

  static DispatchQoS.unspecified.getter();
  v15[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_228();
  _s10Foundation4UUIDVACSHAAWlTm_10(v8, v9);
  OUTLINED_FUNCTION_48_22();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_47_20(v10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v11 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v11);
  _Block_release(v7);

  v12 = OUTLINED_FUNCTION_181();
  v13(v12);
  (*(v3 + 8))(v0, v14);
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationStateManager.toggleSendingVideo()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_conversationController);

    ConversationController.toggleLocalVideo(shouldPauseIfStopped:)(0);
  }
}

Swift::Void __swiftcall ConversationStateManager.endCall()()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v53 = v2;
  v54 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_40();
  v51 = v3;
  OUTLINED_FUNCTION_4_24();
  v52 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v50 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40();
  v49 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v48 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_32();
  v55 = v17;
  v47 = v0;
  v18 = *(v0 + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_4_0();
  v19 = *(v18 + 8);
  ObjectType = swift_getObjectType();
  v21 = *(v19 + 184);
  swift_unknownObjectRetain();
  v22 = OUTLINED_FUNCTION_33_0();
  v23 = v21(v22);
  v24 = [v23 isTelephonyProvider];

  if (v24)
  {
    v25 = OUTLINED_FUNCTION_33_0();
    v26(v25);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
    {
      v27 = v48;
      v28 = *(v48 + 32);
      v28(v55, v10, v11);
      v46 = [*(v47 + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_callCenter) queue];
      OUTLINED_FUNCTION_20();
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = OUTLINED_FUNCTION_26_55();
      v31 = v11;
      v45 = v11;
      v32(v30);
      v33 = v27;
      v34 = (*(v27 + 80) + 24) & ~*(v27 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = v29;
      v28(v35 + v34, &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
      v57[4] = partial apply for closure #1 in ConversationStateManager.endCall();
      v57[5] = v35;
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 1107296256;
      OUTLINED_FUNCTION_6_5();
      v57[2] = v36;
      v57[3] = &block_descriptor_21_2;
      v37 = _Block_copy(v57);

      v38 = v49;
      static DispatchQoS.unspecified.getter();
      v56 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_0_228();
      _s10Foundation4UUIDVACSHAAWlTm_10(v39, v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      OUTLINED_FUNCTION_3_8();
      lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v41, &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      v42 = v51;
      v43 = v54;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v44 = v46;
      MEMORY[0x1BFB215C0](0, v38, v42, v37);
      _Block_release(v37);
      swift_unknownObjectRelease();

      (*(v53 + 8))(v42, v43);
      (*(v50 + 8))(v38, v52);
      (*(v33 + 8))(v55, v45);

      goto LABEL_6;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s10Foundation4UUIDVSgMd);
  }

  (*(v19 + 488))(0, ObjectType, v19);
  swift_unknownObjectRelease();
LABEL_6:
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in ConversationStateManager.endCall()()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_callCenter;
    v3 = *(result + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_callCenter);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v5 = [v3 callsWithGroupUUID_];

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    result = specialized Array.count.getter(v6);
    if (result)
    {
      v7 = result;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      for (i = 0; i != v7; ++i)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1BFB22010](i, v6);
        }

        else
        {
          v9 = *(v6 + 8 * i + 32);
        }

        v10 = v9;
        [*&v1[v2] disconnectCall:v9 withReason:0];
      }
    }
  }

  return result;
}

Swift::Void __swiftcall ConversationStateManager.updatePresentationSize(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  OUTLINED_FUNCTION_4_0();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    [v3 setRemoteVideoPresentationSize_];
  }
}

uint64_t ConversationStateManager.updateRemoteVideoPresentationState(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_4_0();
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = one-time initialization token for conversationStateManager;
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.conversationStateManager);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      type metadata accessor for TUCallRemoteVideoPresentationState(0);
      v10 = String.init<A>(describing:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1BBC58000, v6, v7, "Updating remote video presentation state: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1BFB23DF0](v9, -1, -1);
      MEMORY[0x1BFB23DF0](v8, -1, -1);
    }

    [v3 setRemoteVideoPresentationState_];
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall ConversationStateManager.upgradeToRTT()()
{
  OUTLINED_FUNCTION_4_0();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    swift_unknownObjectRetain();
    v3 = [v2 provider];
    v4 = [v3 isTelephonyProvider];

    if (v4)
    {
      [*(v0 + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_callCenter) setTTYType:1 forCall:v2];
    }

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall ConversationStateManager.toggleCameraBlurEffectState()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_localVideoController);
  if ([v1 supportsCameraBlur])
  {
    TUVideoDeviceController.setCameraBlurEnabled(_:)([v1 cameraBlurEnabled] != 1);
  }
}

id ConversationStateManager.toggleCinematicFramingEffectState()(SEL *a1, SEL *a2, const char **a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_localVideoController);
  result = [v6 *a1];
  if (result)
  {
    v8 = [v6 *a2];
    v9 = *a3;

    return [v6 v9];
  }

  return result;
}

uint64_t closure #1 in ConversationStateManager.registerForCallStateUpdates()()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
    swift_beginAccess();
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 328);
    swift_unknownObjectRetain();
    LOBYTE(v2) = v5(ObjectType, v3);
    swift_unknownObjectRelease();

    ConversationPresentationStateProvider.onSendingVideoStateUpdated(_:)(v2 & 1);
  }

  return result;
}

uint64_t closure #2 in ConversationStateManager.registerForCallStateUpdates()()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
    swift_beginAccess();
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 376);
    swift_unknownObjectRetain();
    LOBYTE(v2) = v5(ObjectType, v3);
    swift_unknownObjectRelease();

    ConversationPresentationStateProvider.onMutedStateUpdated(_:)(v2 & 1);
  }

  return result;
}

void closure #3 in ConversationStateManager.registerForCallStateUpdates()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    ConversationStateManager.updateRTTState()();
  }
}

void ConversationStateManager.updateRTTState()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  swift_beginAccess();
  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 176);
  swift_unknownObjectRetain();
  LOBYTE(v1) = v4(ObjectType, v2);
  swift_unknownObjectRelease();
  ConversationPresentationStateProvider.onRTTCallStateChange(_:)(v1 & 1);
  ConversationController.shouldShowRTTUpgrade.getter();
  ConversationPresentationStateProvider.onShouldShowRTTUpgradeChange(_:)(v5 & 1);
}

uint64_t closure #4 in ConversationStateManager.registerForCallStateUpdates()()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
    swift_beginAccess();
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5.value._countAndFlagsBits = (*(*(v3 + 8) + 16))(ObjectType);
    ConversationPresentationStateProvider.onCallDurationUpdated(_:)(v5);
  }

  return result;
}

void closure #1 in ConversationStateManager.registerConversationControllerCallbacks()(uint64_t a1)
{
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v1 = static OS_dispatch_queue.main.getter();
  v4 = OUTLINED_FUNCTION_61_0();
  v5(v4);
  v6 = _dispatchPreconditionTest(_:)();
  v7 = OUTLINED_FUNCTION_33_0();
  v8(v7);
  if (v6)
  {
    OUTLINED_FUNCTION_4_0();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      ConversationLocalParticipantStateProvider.onLocalParticipantChanged(_:)(a1);
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #4 in ConversationStateManager.registerConversationControllerCallbacks()(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (!*(a1 + *(type metadata accessor for Participant(0) + 28)))
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        ConversationLocalParticipantStateProvider.onReactingStateChanged(_:)(1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #5 in ConversationStateManager.registerConversationControllerCallbacks()(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (!*(a1 + *(type metadata accessor for Participant(0) + 28)))
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        ConversationLocalParticipantStateProvider.onReactingStateChanged(_:)(0);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #7 in ConversationStateManager.registerConversationControllerCallbacks()()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      ConversationStateManager.conversationControllerParticipantsDidChange()();
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #8 in ConversationStateManager.registerConversationControllerCallbacks()()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      ConversationStateManager.conversationControllerDidUpdateRemoteParticipant(_:)();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t ConversationStateManager.conversationControllerDidUpdateRemoteParticipant(_:)()
{
  if ((Participant.isActive.getter() & 1) == 0)
  {
    type metadata accessor for Participant(0);
    specialized MostActiveParticipantsController.markParticipantAsOffline(_:)();
  }

  return ConversationStateManager.conversationControllerParticipantsDidChange()();
}

void closure #6 in ConversationStateManager.registerConversationControllerCallbacks()()
{
  v1 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v0 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v0, *MEMORY[0x1E69E8020], v1);
  v5 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v0, v1);
  if (v5)
  {
    OUTLINED_FUNCTION_4_0();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      ConversationStateManager.conversationControllerParticipantsDidChange()();
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #10 in ConversationStateManager.registerConversationControllerCallbacks()(uint64_t a1)
{
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v1 = static OS_dispatch_queue.main.getter();
  v4 = OUTLINED_FUNCTION_61_0();
  v5(v4);
  v6 = _dispatchPreconditionTest(_:)();
  v7 = OUTLINED_FUNCTION_33_0();
  v8(v7);
  if (v6)
  {
    if (*(a1 + *(type metadata accessor for Participant(0) + 28)))
    {
      OUTLINED_FUNCTION_4_0();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        ConversationStateManager.conversationControllerDidUpdateRemoteParticipant(_:)();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #12 in ConversationStateManager.registerConversationControllerCallbacks()(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      ConversationStateManager.conversationControllerMediaPrioritiesDidChange(_:)(a1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t ConversationStateManager.conversationControllerMediaPrioritiesDidChange(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v30 - v4;
  v34 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v34);
  v31 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_defaults + 8);
  ObjectType = swift_getObjectType();
  v33 = (*(v7 + 288))(ObjectType, v7);
  v32 = (*(v7 + 296))(ObjectType, v7);
  v9 = *(a1 + 16);
  if (v9)
  {
    v30[0] = v5;
    v30[1] = v1;
    *&v40[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = *&v40[0];
    v11 = (a1 + 76);
    do
    {
      v12 = *(v11 - 11);
      v13 = *(v11 - 9);
      v14 = *(v11 - 28);
      v35 = *(v11 - 5);
      v15 = *(v11 - 3);
      if (v33)
      {
        v16 = *(v11 - 1);
      }

      else
      {
        v16 = 0.0;
      }

      if (v32)
      {
        v17 = *v11;
      }

      else
      {
        v17 = 0.0;
      }

      *&v40[0] = v10;
      v19 = *(v10 + 16);
      v18 = *(v10 + 24);
      v20 = v19 + 1;
      v21 = v12;

      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1);
        v10 = *&v40[0];
      }

      *(v10 + 16) = v20;
      v22 = v10 + 48 * v19;
      *(v22 + 32) = v21;
      *(v22 + 40) = v13;
      *(v22 + 48) = v14;
      *(v22 + 56) = v35;
      *(v22 + 64) = v15;
      *(v22 + 72) = v16;
      *(v22 + 76) = v17;
      v11 += 12;
      --v9;
    }

    while (v9);
    v5 = v30[0];
    goto LABEL_14;
  }

  v10 = MEMORY[0x1E69E7CC0];
  v20 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v20)
  {
LABEL_14:
    v23 = 32;
    v24 = v31;
    do
    {
      v25 = *(v10 + v23);
      v26 = *(v10 + v23 + 32);
      v40[1] = *(v10 + v23 + 16);
      v40[2] = v26;
      v40[0] = v25;
      v27 = *(v10 + v23);
      v28 = *(v10 + v23 + 16);
      v41 = *(v10 + v23 + 32);
      v40[3] = v27;
      v40[4] = v28;
      v37 = v27;
      v38 = v28;
      v39 = v41;
      outlined init with copy of ParticipantMediaPriorities(v40, v36);
      outlined init with copy of ParticipantMediaPriorities(v40, v36);
      ConversationController.participant(with:)();

      if (__swift_getEnumTagSinglePayload(v5, 1, v34) == 1)
      {
        outlined destroy of ParticipantMediaPriorities(v40);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit11ParticipantVSgMd);
      }

      else
      {
        outlined init with take of Participant(v5, v24);
        specialized MostActiveParticipantsController.update(_:mediaPriorities:)();
        outlined destroy of ParticipantMediaPriorities(v40);
        outlined destroy of Participant(v24);
      }

      v23 += 48;
      --v20;
    }

    while (v20);
  }
}

uint64_t ConversationStateManager.cameraEffectsStateDidChange()()
{
  TUVideoDeviceController.currentCameraEffectsState.getter(&v2);
  v1 = v2;
  return ConversationLocalParticipantStateProvider.onCameraEffectsStateChanged(_:)(&v1);
}

void closure #13 in ConversationStateManager.registerConversationControllerCallbacks()()
{
  OUTLINED_FUNCTION_4_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    ConversationStateManager.cameraEffectsStateDidChange()();
  }
}

void closure #18 in ConversationStateManager.registerConversationControllerCallbacks()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    ConversationStateManager.cameraEffectsStateDidChange()();
  }
}

void closure #19 in ConversationStateManager.registerConversationControllerCallbacks()()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      PassthroughSubject.send(_:)();
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #20 in ConversationStateManager.registerConversationControllerCallbacks()()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      ConversationPresentationStateProvider.onAudioVideoModeUpdated(_:)();
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #21 in ConversationStateManager.registerConversationControllerCallbacks()(char a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      ConversationPresentationStateProvider.onOneToOneModeEnabledStateUpdated(_:)(a1 & 1);
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #22 in ConversationStateManager.registerConversationControllerCallbacks()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = *(Strong + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_callCenter);
      ObjectType = swift_getObjectType();
      v12 = *(a2 + 56);
      v13 = v10;
      v14 = v12(ObjectType, a2);
      v15 = MEMORY[0x1BFB209B0](v14);

      v16 = [v13 callWithCallUUID_];

      if (v16)
      {
        v17 = v16;
        v18 = [v17 isConnecting];
        v19 = [v17 isConnected];
        v20 = [v17 status];

        v21[0] = v18;
        v21[1] = v19;
        v22 = v20;
        ConversationStateManager.conversationControllerCallStatusDidChange(_:)();
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void ConversationStateManager.conversationControllerCallStatusDidChange(_:)()
{
  ConversationPresentationStateProvider.onCallDisplayStatusUpdated(_:)();

  ConversationStateManager.updateRTTState()();
}

void closure #3 in ConversationStateManager.registerConversationControllerCallbacks()(char a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = (v11 - v10);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v12, *MEMORY[0x1E69E8020], v6);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v12, v6);
  if (v13)
  {
    OUTLINED_FUNCTION_4_0();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      a4(a1 & 1);
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #24 in ConversationStateManager.registerConversationControllerCallbacks()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    ConversationStateManager.conversationControllerParticipantsDidChange()();
  }
}

uint64_t ConversationStateManager.conversationControllerParticipantsDidChange()()
{
  v1 = v0;
  v2 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_conversationController);
  swift_beginAccess();

  ConversationRemoteParticipantsStateProvider.onParticipantsChanged(_:)(v6);

  v7 = ConversationController.conversationDisplayName.getter();
  if (v8)
  {
    countAndFlagsBits = v7;
    object = v8;
  }

  else
  {
    v11 = [objc_opt_self() conversationKit];
    v63._object = 0xE000000000000000;
    v12._countAndFlagsBits = 0x454D495445434146;
    v13.value._countAndFlagsBits = 0x61737265766E6F43;
    v13.value._object = 0xEF74694B6E6F6974;
    v12._object = 0xE800000000000000;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v63._countAndFlagsBits = 0;
    v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v63);
    countAndFlagsBits = v15._countAndFlagsBits;
    object = v15._object;
  }

  v60 = countAndFlagsBits;
  v61 = object;
  v62 = 0;
  ConversationPresentationStateProvider.onCallDisplayInfoUpdated(_:)();
  outlined consume of CallDisplayInfo(v60, v61, v62);
  ConversationController.lookupActiveConversation()();
  outlined init with copy of Participant?(&v60, v57, &_s15ConversationKit0A0_pSgMd);
  v16 = v58;
  if (!v58)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v57, &_s15ConversationKit0A0_pSgMd);
    v44 = MEMORY[0x1E69E7CC0];
LABEL_34:
    ConversationStateManager.updateDisplayProperties(using:)(v44);

    if (CaptioningStateManager.isCaptioningEnabled.getter())
    {
      ConversationController.captionsRecognizerShouldBeRunning.setter();
    }

    v45 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
    swift_beginAccess();
    outlined init with copy of Participant(v5 + v45, v4);
    ConversationLocalParticipantStateProvider.onLocalParticipantChanged(_:)(v4);
    outlined destroy of Participant(v4);
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v60, &_s15ConversationKit0A0_pSgMd);
  }

  v17 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  v18 = (*(v17 + 96))(v16, v17);
  v19 = specialized Set.count.getter(v18);
  if (!v19)
  {

    v44 = MEMORY[0x1E69E7CC0];
LABEL_33:
    __swift_destroy_boxed_opaque_existential_1(v57);
    goto LABEL_34;
  }

  v20 = v19;
  v56 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  result = specialized Set.startIndex.getter(v18);
  v53 = result;
  v54 = v22;
  v55 = v23 & 1;
  if ((v20 & 0x8000000000000000) == 0)
  {
    v46 = v5;
    v47 = v4;
    v48 = v1;
    v24 = 0;
    v25 = v18 & 0xFFFFFFFFFFFFFF8;
    if (v18 < 0)
    {
      v25 = v18;
    }

    v51 = v25;
    v50 = v18 + 56;
    v49 = v18 + 64;
    while (!__OFADD__(v24++, 1))
    {
      v28 = v53;
      v27 = v54;
      v29 = v55;
      specialized Set.subscript.getter(v53, v54, v55, v18);
      v31 = v30;
      v32 = [v30 handle];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      if ((v18 & 0xC000000000000001) != 0)
      {
        if (!v29)
        {
          goto LABEL_42;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo20TUConversationMemberC_GMd);
        v37 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v37(v52, 0);
      }

      else
      {
        if (v29)
        {
          goto LABEL_43;
        }

        if ((v28 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        v33 = 1 << *(v18 + 32);
        if (v28 >= v33)
        {
          goto LABEL_38;
        }

        v34 = v28 >> 6;
        v35 = *(v50 + 8 * (v28 >> 6));
        if (((v35 >> v28) & 1) == 0)
        {
          goto LABEL_39;
        }

        if (*(v18 + 36) != v27)
        {
          goto LABEL_40;
        }

        v36 = v35 & (-2 << (v28 & 0x3F));
        if (v36)
        {
          v33 = __clz(__rbit64(v36)) | v28 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v38 = v34 << 6;
          v39 = v34 + 1;
          v40 = (v49 + 8 * v34);
          while (v39 < (v33 + 63) >> 6)
          {
            v42 = *v40++;
            v41 = v42;
            v38 += 64;
            ++v39;
            if (v42)
            {
              result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v28, v27, 0);
              v33 = __clz(__rbit64(v41)) + v38;
              goto LABEL_28;
            }
          }

          result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v28, v27, 0);
        }

LABEL_28:
        v43 = *(v18 + 36);
        v53 = v33;
        v54 = v43;
        v55 = 0;
      }

      if (v24 == v20)
      {

        outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v53, v54, v55);
        v44 = v56;
        v4 = v47;
        v5 = v46;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

void closure #1 in ConversationStateManager.registerForMostActiveParticipantControllerCallbacks()()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      ConversationStateManager.mostActiveParticipantDidChange(with:)();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t ConversationStateManager.mostActiveParticipantDidChange(with:)()
{
  active = specialized MostActiveParticipantsController.mostActiveParticipantIdentifiers.getter();
  ConversationRemoteParticipantsStateProvider.onMostActiveParticipantsChanged(_:)(active);
}

void *closure #1 in Call.continuityCall.getter()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    swift_unknownObjectRetain();
    v1 = [v0 localizedLabel];
    if (v1)
    {
      v2 = v1;
      v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return v0;
}

uint64_t closure #2 in Call.continuityCall.getter()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v8 = result;
    swift_unknownObjectRetain();
    v9 = [v8 imageURL];
    if (v9)
    {
      v10 = v9;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v1 + 32))(v6, v3, v0);
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v0);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s10Foundation3URLVSgMd);
      v11 = [v8 localizedLabel];
      if (v11)
      {

        v12 = [v8 callDirectoryName];
        if (!v12)
        {
          swift_unknownObjectRelease();
          return 1;
        }
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v0);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s10Foundation3URLVSgMd);
    }

    return 0;
  }

  return result;
}

uint64_t closure #3 in Call.continuityCall.getter()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    swift_unknownObjectRetain();
    specialized Call.isCallingEmergencyServices.getter();
    v2 = v1;
    swift_unknownObjectRelease();
    return v2 & 1;
  }

  return result;
}

id @nonobjc TUContinuityCallInfo.init(callIdentifier:callerIdSubstring:displayName:isBranded:isEmergency:contactIdentifiersByHandle:senderIdentityShortName:senderIdentityName:handlesHash:handlesBlocked:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, char a16)
{
  v17 = v16;
  v32 = MEMORY[0x1BFB209B0]();

  if (a4)
  {
    v23 = MEMORY[0x1BFB209B0](a3, a4);
  }

  else
  {
    v23 = 0;
  }

  v24 = MEMORY[0x1BFB209B0](a5, a6);

  v25.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  if (a11)
  {
    v26 = MEMORY[0x1BFB209B0](a10, a11);
  }

  else
  {
    v26 = 0;
  }

  if (a13)
  {
    v27 = MEMORY[0x1BFB209B0](a12, a13);
  }

  else
  {
    v27 = 0;
  }

  if (a15 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a14, a15);
  }

  LOBYTE(v31) = a16 & 1;
  v29 = [v17 initWithCallIdentifier:v32 callerIdSubstring:v23 displayName:v24 isBranded:a7 & 1 isEmergency:a8 & 1 contactIdentifiersByHandle:v25.super.isa senderIdentityShortName:v26 senderIdentityName:v27 handlesHash:isa handlesBlocked:v31];

  return v29;
}

id @nonobjc TUContinuityCall.init(uuid:conversationUUID:callGroupUUID:status:isMuted:isCameraEnabled:callInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, void *a6, void *a7)
{
  v13.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v14 = type metadata accessor for UUID();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v14) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v14 - 8) + 8))(a2, v14);
  }

  if (__swift_getEnumTagSinglePayload(a3, 1, v14) == 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v14 - 8) + 8))(a3, v14);
  }

  v17 = [v19 initWithUUID:v13.super.isa conversationUUID:isa callGroupUUID:v16 status:a4 isMuted:a5 isCameraEnabled:a6 callInfo:a7];

  (*(*(v14 - 8) + 8))(a1, v14);
  return v17;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v121 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
  v130 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v125 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v134 = &v118 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v136 = &v118 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v135 = &v118 - v14;
  v131 = a3;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_98:
    v19 = *v121;
    if (!*v121)
    {
      goto LABEL_140;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_100:
      v110 = v17 + 16;
      v111 = *(v17 + 2);
      while (v111 >= 2)
      {
        if (!*v131)
        {
          goto LABEL_137;
        }

        v112 = v17;
        v113 = &v17[16 * v111];
        v17 = *v113;
        v114 = &v110[2 * v111];
        v115 = *(v114 + 1);
        v116 = v132;
        specialized _merge<A>(low:mid:high:buffer:by:)(*v131 + *(v130 + 72) * *v113, *v131 + *(v130 + 72) * *v114, *v131 + *(v130 + 72) * v115, v19);
        v132 = v116;
        if (v116)
        {
          break;
        }

        if (v115 < v17)
        {
          goto LABEL_125;
        }

        if (v111 - 2 >= *v110)
        {
          goto LABEL_126;
        }

        *v113 = v17;
        *(v113 + 1) = v115;
        v117 = *v110 - v111;
        if (*v110 < v111)
        {
          goto LABEL_127;
        }

        v111 = *v110 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v114 + 16, v117, v114);
        *v110 = v111;
        v17 = v112;
      }

LABEL_108:

      return;
    }

LABEL_134:
    v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
    goto LABEL_100;
  }

  v137 = v13;
  v119 = a4;
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = v16;
    v19 = v16 + 1;
    v122 = v16;
    if (v16 + 1 < v15)
    {
      v120 = v17;
      v20 = v16;
      v21 = *v131;
      v22 = *(v130 + 72);
      v23 = v16 + 1;
      v19 = *v131 + v22 * v19;
      v24 = v135;
      v129 = v15;
      outlined init with copy of Participant?(v19, v135, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
      v25 = v136;
      outlined init with copy of Participant?(v21 + v22 * v20, v136, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
      v26 = *(v137 + 36);
      v27 = *(v137 + 48);
      v28 = *(v24 + v26) * *(v24 + v27);
      v29 = *(v25 + v26) * *(v25 + v27);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
      v30 = v129;
      v31 = (v20 + 2);
      v133 = v22;
      v32 = v21 + v22 * (v20 + 2);
      while (1)
      {
        v17 = v31;
        if (v23 + 1 >= v30)
        {
          break;
        }

        ++v23;
        v33 = v135;
        outlined init with copy of Participant?(v32, v135, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
        v34 = v136;
        outlined init with copy of Participant?(v19, v136, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
        v35 = *(v137 + 36);
        v36 = *(v137 + 48);
        v37 = *(v33 + v35) * *(v33 + v36);
        v38 = *(v34 + v35) * *(v34 + v36);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v34, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v33, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
        v30 = v129;
        v32 += v133;
        v19 += v133;
        v31 = v17 + 1;
        if (v29 < v28 == v38 >= v37)
        {
          goto LABEL_9;
        }
      }

      v23 = v30;
LABEL_9:
      if (v29 < v28)
      {
        v18 = v122;
        if (v23 < v122)
        {
          goto LABEL_131;
        }

        v19 = v23;
        if (v122 >= v23)
        {
          v17 = v120;
          goto LABEL_30;
        }

        if (v30 >= v17)
        {
          v39 = v17;
        }

        else
        {
          v39 = v30;
        }

        v40 = v133 * (v39 - 1);
        v41 = v23;
        v42 = v122;
        v43 = v133 * v39;
        v44 = v122 * v133;
        do
        {
          if (v42 != --v41)
          {
            v45 = *v131;
            if (!*v131)
            {
              goto LABEL_138;
            }

            outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v45 + v44, v125, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
            v46 = v44 < v40 || v45 + v44 >= (v45 + v43);
            if (v46)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v44 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v125, v45 + v40, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
          }

          ++v42;
          v40 -= v133;
          v43 -= v133;
          v44 += v133;
        }

        while (v42 < v41);
      }

      v17 = v120;
      v19 = v23;
      v18 = v122;
    }

LABEL_30:
    v47 = v131[1];
    if (v19 < v47)
    {
      if (__OFSUB__(v19, v18))
      {
        goto LABEL_130;
      }

      if (v19 - v18 < v119)
      {
        break;
      }
    }

LABEL_46:
    if (v19 < v18)
    {
      goto LABEL_129;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v129 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v17 = v108;
    }

    v64 = *(v17 + 2);
    v65 = v64 + 1;
    if (v64 >= *(v17 + 3) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v17 = v109;
    }

    *(v17 + 2) = v65;
    v66 = v17 + 32;
    v67 = &v17[16 * v64 + 32];
    v68 = v129;
    *v67 = v122;
    *(v67 + 1) = v68;
    v69 = *v121;
    if (!*v121)
    {
      goto LABEL_139;
    }

    if (v64)
    {
      while (1)
      {
        v70 = v65 - 1;
        v71 = &v66[16 * v65 - 16];
        v72 = &v17[16 * v65];
        if (v65 >= 4)
        {
          break;
        }

        v73 = v132;
        if (v65 == 3)
        {
          v74 = *(v17 + 4);
          v75 = *(v17 + 5);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_66:
          if (v77)
          {
            goto LABEL_116;
          }

          v89 = *v72;
          v88 = *(v72 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_119;
          }

          v93 = *(v71 + 1);
          v94 = v93 - *v71;
          if (__OFSUB__(v93, *v71))
          {
            goto LABEL_122;
          }

          if (__OFADD__(v91, v94))
          {
            goto LABEL_124;
          }

          if (v91 + v94 >= v76)
          {
            if (v76 < v94)
            {
              v70 = v65 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        if (v65 < 2)
        {
          goto LABEL_118;
        }

        v96 = *v72;
        v95 = *(v72 + 1);
        v84 = __OFSUB__(v95, v96);
        v91 = v95 - v96;
        v92 = v84;
LABEL_81:
        if (v92)
        {
          goto LABEL_121;
        }

        v98 = *v71;
        v97 = *(v71 + 1);
        v84 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v84)
        {
          goto LABEL_123;
        }

        if (v99 < v91)
        {
          goto LABEL_95;
        }

LABEL_88:
        if (v70 - 1 >= v65)
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (!*v131)
        {
          goto LABEL_136;
        }

        v103 = v17;
        v104 = &v66[16 * v70 - 16];
        v17 = *v104;
        v105 = v70;
        v19 = &v66[16 * v70];
        v106 = *(v19 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v131 + *(v130 + 72) * *v104, *v131 + *(v130 + 72) * *v19, *v131 + *(v130 + 72) * v106, v69);
        if (v73)
        {
          goto LABEL_108;
        }

        if (v106 < v17)
        {
          goto LABEL_111;
        }

        v132 = 0;
        v107 = *(v103 + 2);
        if (v105 > v107)
        {
          goto LABEL_112;
        }

        *v104 = v17;
        *(v104 + 1) = v106;
        if (v105 >= v107)
        {
          goto LABEL_113;
        }

        v65 = v107 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v19 + 16), v107 - 1 - v105, v19);
        v17 = v103;
        *(v103 + 2) = v107 - 1;
        if (v107 <= 2)
        {
          goto LABEL_95;
        }
      }

      v78 = &v66[16 * v65];
      v79 = *(v78 - 8);
      v80 = *(v78 - 7);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_114;
      }

      v83 = *(v78 - 6);
      v82 = *(v78 - 5);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      v73 = v132;
      if (v84)
      {
        goto LABEL_115;
      }

      v85 = *(v72 + 1);
      v86 = v85 - *v72;
      if (__OFSUB__(v85, *v72))
      {
        goto LABEL_117;
      }

      v84 = __OFADD__(v76, v86);
      v87 = v76 + v86;
      if (v84)
      {
        goto LABEL_120;
      }

      if (v87 >= v81)
      {
        v101 = *v71;
        v100 = *(v71 + 1);
        v84 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v84)
        {
          goto LABEL_128;
        }

        if (v76 < v102)
        {
          v70 = v65 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_66;
    }

LABEL_95:
    v15 = v131[1];
    v16 = v129;
    if (v129 >= v15)
    {
      goto LABEL_98;
    }
  }

  v48 = v18 + v119;
  if (__OFADD__(v18, v119))
  {
    goto LABEL_132;
  }

  if (v48 >= v47)
  {
    v48 = v131[1];
  }

  if (v48 < v18)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (v19 == v48)
  {
    goto LABEL_46;
  }

  v120 = v17;
  v49 = *(v130 + 72);
  v50 = *v131 + v49 * (v19 - 1);
  v51 = -v49;
  v52 = v18 - v19;
  v133 = *v131;
  v123 = v49;
  v124 = v48;
  v53 = v133 + v19 * v49;
LABEL_39:
  v128 = v50;
  v129 = v19;
  v126 = v53;
  v127 = v52;
  v54 = v53;
  v55 = v137;
  while (1)
  {
    v56 = v135;
    outlined init with copy of Participant?(v54, v135, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
    v57 = v136;
    outlined init with copy of Participant?(v50, v136, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
    v58 = *(v55 + 36);
    v59 = *(v55 + 48);
    v60 = *(v56 + v58) * *(v56 + v59);
    v61 = *(v57 + v58) * *(v57 + v59);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v57, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v56, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
    if (v61 >= v60)
    {
LABEL_44:
      v19 = v129 + 1;
      v50 = v128 + v123;
      v52 = v127 - 1;
      v53 = v126 + v123;
      if (v129 + 1 == v124)
      {
        v19 = v124;
        v17 = v120;
        v18 = v122;
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    if (!v133)
    {
      break;
    }

    v62 = v134;
    outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v54, v134, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
    v55 = v137;
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v62, v50, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
    v50 += v51;
    v54 += v51;
    v46 = __CFADD__(v52++, 1);
    if (v46)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_10(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_170();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_8Tm_0()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();

  v0 = OUTLINED_FUNCTION_226();
  v1(v0);

  return swift_deallocObject();
}

uint64_t partial apply for closure #5 in ConversationStateManager.init(call:callCenter:defaults:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a1(v4, v5);
}

void partial apply for specialized closure #1 in MostActiveParticipantsController.markParticipantAsUserSelected(_:shouldPostCallback:)()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_9_0(v1);
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));
  v6 = *(v5 + *(v3 + 64));

  specialized closure #1 in MostActiveParticipantsController.markParticipantAsUserSelected(_:shouldPostCallback:)(v4, v5, v6);
}

void partial apply for specialized closure #1 in MostActiveParticipantsController.update(_:mediaPriorities:)()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_9_0(v1);
  OUTLINED_FUNCTION_45_31();
  v4 = *(v0 + 16);

  specialized closure #1 in MostActiveParticipantsController.update(_:mediaPriorities:)(v4, v0 + v2, v0 + v3);
}

uint64_t outlined assign with copy of MostActiveParticipantsController<UUID>.ActivityDetails(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void partial apply for specialized closure #1 in MostActiveParticipantsController.markParticipantAsOffline(_:)()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_9_0(v1);
  OUTLINED_FUNCTION_45_31();
  v4 = *(v0 + v3);

  specialized closure #1 in MostActiveParticipantsController.markParticipantAsOffline(_:)(v0 + v2, v4);
}

uint64_t FTServerBag.isServerFaceTimeMyselfEnabled.getter()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = outlined bridged method (mbnn) of @objc FTServerBag.object(forKey:)(0xD00000000000001ALL, 0x80000001BC525510, result);

    if (v2)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v4 = 0u;
      v5 = 0u;
    }

    v6[0] = v4;
    v6[1] = v5;
    if (*(&v5 + 1))
    {
      if (swift_dynamicCast())
      {
        return v3;
      }
    }

    else
    {
      outlined destroy of Any?(v6);
    }

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FTServerBag.remoteControlEnabled.getter()
{
  if (outlined bridged method (mbnn) of @objc FTServerBag.object(forKey:)(0xD00000000000001FLL, 0x80000001BC525530, v0))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (!*(&v5 + 1))
  {
    outlined destroy of Any?(v6);
    return 1;
  }

  type metadata accessor for NSNumber();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  v1 = [v3 BOOLValue];

  return v1;
}

id outlined bridged method (mbnn) of @objc FTServerBag.object(forKey:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0]();

  v5 = [a3 objectForKey_];

  return v5;
}

uint64_t Conversation.currentSharePlayActivity.getter(uint64_t a1, uint64_t a2)
{
  v3 = Conversation.activities.getter(a1, a2);
  Array<A>.currentSharePlayActivity.getter(v3);
  OUTLINED_FUNCTION_28_0();

  return v2;
}

uint64_t Conversation.currentCollaboration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = Conversation.activities.getter(a1, a2);
  Array<A>.currentCollaboration.getter(v4, a3);
}

BOOL Conversation.isContinuitySession.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 280))();
  v3 = [v2 mode];

  return v3 == 2;
}

uint64_t Conversation.avModeForSystemAperture.getter()
{
  OUTLINED_FUNCTION_55();
  if ((*(v0 + 56))() == 4 && (v1 = OUTLINED_FUNCTION_45_1(), v3 = v2(v1), v4 = specialized Set.count.getter(v3), , v4 == 1))
  {
    v5 = OUTLINED_FUNCTION_45_1();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_45_1();
  }

  return v6(v5);
}

uint64_t Conversation.currentActivity.getter(uint64_t a1, uint64_t a2)
{
  v2 = Conversation.activities.getter(a1, a2);
  v3 = Array<A>.sortedActivities.getter(v2);

  specialized Collection.first.getter(v3);
}

id TUConversation.stagedSharePlayActivity.getter()
{
  v1 = [v0 stagedActivitySession];

  return v1;
}

uint64_t Conversation.currentScreenSharingRequest(ignoring:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_39_1(a1, a2);
  if (!Conversation.canDisplayScreenSharingRequest.getter())
  {
    return 0;
  }

  (*(a3 + 360))(a2, a3);
  OUTLINED_FUNCTION_28_0();

  specialized Set._Variant.filter(_:)(v3, a1);
  specialized Collection.first.getter(v7);
  OUTLINED_FUNCTION_28_0();

  return v3;
}

BOOL Conversation.isLinkSharingSupported.getter()
{
  OUTLINED_FUNCTION_55();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  v3 = OUTLINED_FUNCTION_45_1();
  v4(v3);
  v5 = type metadata accessor for UUID();
  v6 = __swift_getEnumTagSinglePayload(v2, 1, v5) == 1;
  outlined destroy of UUID?(v2, &_s10Foundation4UUIDVSgMd);
  return v6;
}

Swift::Bool __swiftcall Conversation.isLocalMemberAuthorizedToChangeGroupMembership()()
{
  OUTLINED_FUNCTION_55();
  v1 = (*(v0 + 168))();
  if (v1)
  {

    v2 = OUTLINED_FUNCTION_45_1();
    v4 = v3(v2);
    if (!v4)
    {
      return 1;
    }

    v5 = v4;
    v6 = [v4 canCreateConversations];

    return v6;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_45_1();

    return v8(v7);
  }
}

uint64_t TUConversation.isRestricted.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (*((*MEMORY[0x1E69E7D40] & *static RestrictedConversationChecker.shared) + 0x80))(v0) & 1;
}

uint64_t Conversation.cnk_allowsVideoMessaging.getter()
{
  OUTLINED_FUNCTION_55();
  result = (*(v1 + 272))();
  if (result)
  {
    v3 = OUTLINED_FUNCTION_45_1();
    v5 = v4(v3);
    specialized Set.count.getter(v5);
    OUTLINED_FUNCTION_28_0();

    return v0 == 1;
  }

  return result;
}

uint64_t Conversation.containsAuthorizedToChangeGroupMembership(participantWithHandle:)(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_39_1(a1, a2);
  v4 = v3(v2);
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  v6 = OUTLINED_FUNCTION_33_0();
  v8 = Conversation.containsInvited(participantWithHandle:inLink:)(v6, v7);

  return v8 & 1;
}

void Conversation.allHandles(excludeOtherInvitedHandles:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LOBYTE(v6) = a1;
  v103 = *MEMORY[0x1E69E9840];
  v7 = OUTLINED_FUNCTION_39_1(a1, a2);
  v9 = v8(v7);
  v10 = OUTLINED_FUNCTION_33_0();
  v12 = v11(v10);
  specialized Set.union<A>(_:)(v12, v9, v13, v14, v15, v16, v17, v18, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
  v20 = v19;
  LOBYTE(v94) = v6;
  v88 = a3;
  v89 = v3;
  v87 = a2;
  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x1E69E7CD0];
    v96 = MEMORY[0x1E69E7CD0];
    v22 = __CocoaSet.makeIterator()();
    v20 = &lazy cache variable for type metadata for TUConversationMember;
    while (1)
    {
      while (1)
      {
        v23 = __CocoaSet.Iterator.next()();
        if (!v23)
        {

          goto LABEL_35;
        }

        v90 = v23;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
        swift_dynamicCast();
        if ((v6 & 1) == 0 || ([v100 isOtherInvitedHandle] & 1) == 0)
        {
          break;
        }
      }

      v24 = v100;
      if (*(v21 + 24) <= *(v21 + 16))
      {
        specialized _NativeSet.resize(capacity:)();
      }

      v21 = v96;
      v25 = NSObject._rawHashValue(seed:)(*(v96 + 40)) & ~(-1 << *(v96 + 32));
      if (((-1 << v25) & ~*(v96 + 56 + 8 * (v25 >> 6))) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_16_9();
LABEL_18:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      *(*(v21 + 48) + 8 * v27) = v24;
      ++*(v21 + 16);
    }

    OUTLINED_FUNCTION_15_33();
    while (++v29 != v31 || (v30 & 1) == 0)
    {
      v32 = v29 == v31;
      if (v29 == v31)
      {
        v29 = 0;
      }

      v30 |= v32;
      if (*(v28 + 8 * v29) != -1)
      {
        OUTLINED_FUNCTION_13_8();
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
  }

  else
  {
    v33 = *(v19 + 32);
    v21 = ((1 << v33) + 63) >> 6;
    v22 = (8 * v21);
    if ((v33 & 0x3Fu) > 0xD)
    {
      goto LABEL_74;
    }

LABEL_21:
    v86 = &v86;
    MEMORY[0x1EEE9AC00](v19);
    v22 = &v86 - ((v22 + 15) & 0x3FFFFFFFFFFFFFF0);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v21, v22);
    v34 = 0;
    v35 = 0;
    OUTLINED_FUNCTION_33_2();
    v38 = v37 & v36;
    v40 = (v39 + 63) >> 6;
    while (v38)
    {
      OUTLINED_FUNCTION_93();
LABEL_29:
      v45 = v41 | (v35 << 6);
      if ((v6 & 1) == 0 || ([*(v20[6] + 8 * v45) isOtherInvitedHandle] & 1) == 0)
      {
        *&v22[(v45 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v45;
        v46 = __OFADD__(v34++, 1);
        if (v46)
        {
          __break(1u);
LABEL_34:
          specialized _NativeSet.extractSubset(using:count:)();
          v21 = v47;
          goto LABEL_35;
        }
      }
    }

    v42 = v35;
    while (1)
    {
      v35 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v35 >= v40)
      {
        goto LABEL_34;
      }

      ++v42;
      if (v20[v35 + 7])
      {
        OUTLINED_FUNCTION_7_1();
        v38 = v44 & v43;
        goto LABEL_29;
      }
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_74:

    if (swift_stdlib_isStackAllocationSafe())
    {

      goto LABEL_21;
    }

    v22 = swift_slowAlloc();
    v21 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo20TUConversationMemberCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So20iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v22, v21, v20, partial apply for closure #1 in Conversation.allHandles(excludeOtherInvitedHandles:), &v92);

    MEMORY[0x1BFB23DF0](v22, -1, -1);
LABEL_35:
    specialized Sequence.compactMap<A>(_:)(v21);
    v49 = v48;

    v6 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5(v49);
    v50 = OUTLINED_FUNCTION_33_0();
    active = Conversation.displayableActiveParticipants.getter(v50, v51);
    v53 = specialized Set.count.getter(active);
    if (!v53)
    {
      break;
    }

    v54 = v53;
    v90 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v100 = specialized Set.startIndex.getter(active);
    v101 = v55;
    LOBYTE(v102) = v56 & 1;
    if ((v54 & 0x8000000000000000) == 0)
    {
      v22 = 0;
      if (active < 0)
      {
        v57 = active;
      }

      else
      {
        v57 = (active & 0xFFFFFFFFFFFFFF8);
      }

      v88 = active + 56;
      v89 = v57;
      v86 = v6;
      v87 = active + 64;
      while (1)
      {
        v46 = __OFADD__(v22++, 1);
        if (v46)
        {
          goto LABEL_68;
        }

        v58 = v100;
        v20 = v101;
        v59 = v102;
        v60 = OUTLINED_FUNCTION_112();
        specialized Set.subscript.getter(v60, v61, v59, active);
        v63 = v62;
        v64 = [v62 handle];
        v6 = TUNormalizedHandleForTUHandle();

        if (!v6)
        {
          v65 = [v63 handle];
          LOBYTE(v6) = v65;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v21 = *(v90 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if ((active & 0xC000000000000001) != 0)
        {
          if (!v59)
          {
            __break(1u);
LABEL_78:
            __break(1u);
          }

          OUTLINED_FUNCTION_112();
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            LOBYTE(v6) = swift_isUniquelyReferenced_nonNull_native();
          }

          else
          {
            LOBYTE(v6) = 1;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo25TUConversationParticipantC_GMd);
          v70 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v70(&v96, 0);
        }

        else
        {
          if (v59)
          {
            goto LABEL_78;
          }

          if ((v58 & 0x8000000000000000) != 0)
          {
            goto LABEL_70;
          }

          v66 = (1 << *(active + 32));
          if (v58 >= v66)
          {
            goto LABEL_70;
          }

          v67 = v58 >> 6;
          v68 = *(v88 + 8 * (v58 >> 6));
          if (((v68 >> v58) & 1) == 0)
          {
            goto LABEL_71;
          }

          if (*(active + 36) != v20)
          {
            goto LABEL_72;
          }

          v69 = v68 & (-2 << (v58 & 0x3F));
          if (v69)
          {
            v66 = (__clz(__rbit64(v69)) | v58 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v6 = v67 << 6;
            v71 = v67 + 1;
            v72 = (v87 + 8 * v67);
            while (v71 < (v66 + 63) >> 6)
            {
              v73 = *v72++;
              v21 = v73;
              v6 += 64;
              ++v71;
              if (v73)
              {
                v74 = OUTLINED_FUNCTION_112();
                outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v74, v75, 0);
                v66 = (__clz(__rbit64(v21)) + v6);
                goto LABEL_62;
              }
            }

            v76 = OUTLINED_FUNCTION_112();
            outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v76, v77, 0);
          }

LABEL_62:
          v100 = v66;
          v101 = v20;
          LOBYTE(v102) = 0;
        }

        if (v22 == v54)
        {

          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v100, v101, v102);
          v78 = v90;
          v6 = v86;
          goto LABEL_66;
        }
      }
    }
  }

  v78 = MEMORY[0x1E69E7CC0];
LABEL_66:
  v79 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5(v78);
  specialized Set.union<A>(_:)(v79, v6, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
}

uint64_t Conversation.containsKickable(participantWithHandle:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 216);
  v5 = OUTLINED_FUNCTION_39_1(a1, a2);
  v6 = v4(v5);
  if (v6)
  {
    v7 = v6;
    v8 = Conversation.containsInvited(participantWithHandle:inLink:)(a1, v6);

    v9 = v8 ^ 1;
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BC4BAA20;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
    v11 = a1;
    v12 = String.init<A>(reflecting:)();
    v14 = v13;
    v15 = MEMORY[0x1E69E6158];
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v16 = lazy protocol witness table accessor for type String and conformance String();
    *(v10 + 64) = v16;
    *(v10 + 32) = v12;
    *(v10 + 40) = v14;
    v17 = OUTLINED_FUNCTION_33_0();
    if (v4(v17))
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationLink);
      v18 = String.init<A>(reflecting:)();
    }

    else
    {
      v19 = 0xE300000000000000;
      v18 = 7104878;
    }

    *(v10 + 96) = v15;
    *(v10 + 104) = v16;
    *(v10 + 72) = v18;
    *(v10 + 80) = v19;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v9 = 0;
  }

  return v9 & 1;
}

uint64_t Conversation.activities.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 328))();
  specialized _copyCollectionToContiguousArray<A>(_:)(v4);

  specialized _arrayForceCast<A, B>(_:)();
  v6 = v5;

  (*(a2 + 312))(a1, a2);
  specialized _arrayForceCast<A, B>(_:)();
  v8 = v7;

  specialized Array.append<A>(contentsOf:)(v8);
  return v6;
}

uint64_t Array<A>.currentSharePlayActivity.getter(uint64_t a1)
{
  result = Array<A>.sortedActivities.getter(a1);
  v2 = result;
  v3 = 0;
  v4 = *(result + 16);
  for (i = result + 32; ; i += 40)
  {
    if (v4 == v3)
    {

      return 0;
    }

    if (v3 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    outlined init with copy of IDSLookupManager(i, &v9);
    v6 = v10;
    v7 = v11;
    v8 = __swift_project_boxed_opaque_existential_1(&v9, v10);
    if ((*(v7 + 104))(v6, v7))
    {
      break;
    }

    ++v3;
    result = __swift_destroy_boxed_opaque_existential_1(&v9);
  }

  OUTLINED_FUNCTION_28_0();

  outlined init with take of TapInteractionHandler(&v9, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pMd);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

BOOL Conversation.canDisplayScreenSharingRequest.getter()
{
  OUTLINED_FUNCTION_55();
  v1 = *(v0 + 272);
  if (v1() == 2)
  {
    return 1;
  }

  v3 = OUTLINED_FUNCTION_45_1();
  return (v1)(v3) == 1;
}

uint64_t Array<A>.currentCollaboration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  result = Array<A>.sortedActivities.getter(a1);
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  for (i = result + 32; ; i += 40)
  {
    if (v9 == v8)
    {

      v14 = type metadata accessor for Collaboration(0);
      v15 = v19;
      v16 = 1;
      return __swift_storeEnumTagSinglePayload(v15, v16, 1, v14);
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    outlined init with copy of IDSLookupManager(i, &v20);
    v11 = v21;
    v12 = v22;
    __swift_project_boxed_opaque_existential_1(&v20, v21);
    (*(v12 + 112))(v11, v12);
    v13 = type metadata accessor for Collaboration(0);
    if (__swift_getEnumTagSinglePayload(v5, 1, v13) != 1)
    {

      outlined destroy of UUID?(v5, &_s15ConversationKit13CollaborationVSgMd);
      outlined init with take of TapInteractionHandler(&v20, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pMd);
      v17 = v19;
      v16 = swift_dynamicCast() ^ 1;
      v15 = v17;
      v14 = v13;
      return __swift_storeEnumTagSinglePayload(v15, v16, 1, v14);
    }

    ++v8;
    outlined destroy of UUID?(v5, &_s15ConversationKit13CollaborationVSgMd);
    result = __swift_destroy_boxed_opaque_existential_1(&v20);
  }

  __break(1u);
  return result;
}

void Conversation.untrustedActiveLightweightParticipants.getter()
{
  OUTLINED_FUNCTION_55();
  v4 = (*(v3 + 112))();
  v6 = v2;
  v7 = v0;
  v8 = v1;
  specialized Set._Variant.filter(_:)(partial apply for closure #1 in Conversation.untrustedActiveLightweightParticipants.getter, &v5, v4);
}

void closure #1 in Conversation.untrustedActiveLightweightParticipants.getter(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *a1;
  v4 = (*(a4 + 144))(a3, a4);
  if ((v4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember);
    Set.Iterator.init(_cocoa:)();
    v6 = v24;
    v5 = v25;
    v8 = v26;
    v7 = v27;
    v9 = v28;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);
    v7 = 0;
  }

  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v7;
  v14 = v9;
  v15 = v7;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v6 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v18 = v17;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
        v19 = v18;
        v20 = [v18 handle];
        v21 = [v23 handle];
        v22 = static NSObject.== infix(_:_:)();

        if (v22)
        {
          break;
        }

        v7 = v15;
        v9 = v16;
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
          swift_dynamicCast();
          v17 = v29;
          v15 = v7;
          v16 = v9;
          if (v29)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      outlined consume of Set<TUHandle>.Iterator._Variant();

      [v19 isValidated];
    }

    else
    {
LABEL_19:
      outlined consume of Set<TUHandle>.Iterator._Variant();
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v8 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v5 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t closure #1 in Conversation.displayableActiveParticipants.getter(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (((*(*static Defaults.shared + 608))() & 1) == 0)
  {
    return 1;
  }

  v7 = [v6 identifier];
  v8 = (*(a4 + 176))(a3, a4);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  v10 = [v8 identifier];

  if (v7 != v10)
  {
    return 1;
  }

  if (one-time initialization token for conversationController != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.conversationController);
  v12 = v6;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_1BBC58000, v13, v14, "Excluding participant %@ from displayable participants because it's the local participant", v15, 0xCu);
    outlined destroy of UUID?(v16, &_sSo8NSObjectCSgMd);
    MEMORY[0x1BFB23DF0](v16, -1, -1);
    MEMORY[0x1BFB23DF0](v15, -1, -1);
  }

  return 0;
}

void Conversation.containsPending(participantWithHandle:)(void *a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_39_1(a1, a2);
  v4 = v3(v2);
  if ((v4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember);
    Set.Iterator.init(_cocoa:)();
    v6 = v39;
    v5 = v40;
    v7 = v41;
    v8 = v42;
    v9 = v43;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);
    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  v33 = v6;
  v34 = v5;
  v35 = v13;
  while (1)
  {
    v14 = v9;
    v15 = v8;
    if ((v6 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember), swift_dynamicCast(), v21 = v38, v19 = v14, !v38))
    {
LABEL_26:
      OUTLINED_FUNCTION_45_1();
      outlined consume of Set<TUHandle>.Iterator._Variant();

      return;
    }

LABEL_17:
    v36 = v19;
    v22 = [v21 handles];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
    v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v23 & 0xC000000000000001) != 0)
    {
      v24 = a1;
      v25 = __CocoaSet.contains(_:)();

      v13 = v35;
      v9 = v36;
      if (v25)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v31 = v14;
      v32 = v15;
      if (*(v23 + 16))
      {
        v26 = NSObject._rawHashValue(seed:)(*(v23 + 40));
        v27 = ~(-1 << *(v23 + 32));
        while (1)
        {
          v28 = v26 & v27;
          if (((*(v23 + 56 + (((v26 & v27) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v26 & v27)) & 1) == 0)
          {
            break;
          }

          v29 = *(*(v23 + 48) + 8 * v28);
          v30 = static NSObject.== infix(_:_:)();

          v26 = v28 + 1;
          if (v30)
          {

            goto LABEL_26;
          }
        }
      }

      v6 = v33;
      v5 = v34;
      v13 = v35;
      v9 = v36;
    }
  }

  v16 = v8;
  if (v9)
  {
LABEL_13:
    OUTLINED_FUNCTION_7_1();
    v19 = v18 & v17;
    v21 = *(*(v6 + 48) + ((v8 << 9) | (8 * v20)));
    if (!v21)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v8 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_26;
    }

    ++v16;
    if (*(v5 + 8 * v8))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t Conversation.containsInvited(participantWithHandle:inLink:)(void *a1, id a2)
{
  v3 = [a2 invitedMemberHandles];
  v4 = MEMORY[0x1E69E6158];
  if (v3 && (v3, (v5 = [a2 originatorHandle]) != 0))
  {
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v6 = 7104878;
    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BC4BB980;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationLink);
    v8 = a2;
    v9 = String.init<A>(reflecting:)();
    v11 = v10;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    v12 = lazy protocol witness table accessor for type String and conformance String();
    *(v7 + 64) = v12;
    *(v7 + 32) = v9;
    *(v7 + 40) = v11;
    v13 = [v8 invitedMemberHandles];
    if (v13)
    {
      v14 = v13;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
      lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo8TUHandleCGMd);
      v15 = String.init<A>(reflecting:)();
    }

    else
    {
      v16 = 0xE300000000000000;
      v15 = 7104878;
    }

    v4 = MEMORY[0x1E69E6158];
    *(v7 + 96) = MEMORY[0x1E69E6158];
    *(v7 + 104) = v12;
    *(v7 + 72) = v15;
    *(v7 + 80) = v16;
    if ([v8 originatorHandle])
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
      v6 = String.init<A>(reflecting:)();
    }

    else
    {
      v17 = 0xE300000000000000;
    }

    *(v7 + 136) = v4;
    *(v7 + 144) = v12;
    *(v7 + 112) = v6;
    *(v7 + 120) = v17;
    os_log(_:dso:log:type:_:)();
  }

  v18 = [a2 invitedMemberHandles];
  if (v18)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
    v19 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Set.contains(_:)(a1, v19);
    LODWORD(v18) = v20;
  }

  v21 = [a2 originatorHandle];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 isEquivalentToHandle_];
  }

  else
  {
    v23 = 0;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BC4BB980;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
  v25 = a1;
  v26 = String.init<A>(reflecting:)();
  v28 = v27;
  *(v24 + 56) = v4;
  v29 = lazy protocol witness table accessor for type String and conformance String();
  *(v24 + 64) = v29;
  *(v24 + 32) = v26;
  *(v24 + 40) = v28;
  v30 = String.init<A>(reflecting:)();
  *(v24 + 96) = v4;
  *(v24 + 104) = v29;
  *(v24 + 72) = v30;
  *(v24 + 80) = v31;
  v32 = String.init<A>(reflecting:)();
  *(v24 + 136) = v4;
  *(v24 + 144) = v29;
  *(v24 + 112) = v32;
  *(v24 + 120) = v33;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  return (v18 | v23) & 1;
}

uint64_t TUConversation.reportUUID.getter()
{
  v1 = [v0 report];
  v2 = [v1 conversationID];

  if (v2)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for UUID();
  v3 = OUTLINED_FUNCTION_2_23();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t TUConversation.collaborations.getter()
{
  v0 = type metadata accessor for Collaboration(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (((*(*static Defaults.shared + 288))() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = TUConversation.highlight.getter();
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  v6 = TUConversation.highlightState.getter();
  if (v6 >= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0x201u >> (8 * v6);
  }

  v8 = v5;
  Collaboration.init(highlight:state:)(v8, v7, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit13CollaborationVGMd);
  v9 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BC4BA940;
  outlined init with take of Collaboration(v3, v10 + v9);

  return v10;
}

id TUConversation.highlight.getter()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 conversationManager];

  v3 = [v2 collaborationForConversation_];
  return v3;
}

id TUConversation.highlightState.getter()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 conversationManager];

  v3 = [v2 collaborationStateForConversation_];
  return v3;
}

uint64_t TUConversation.participantListDisplayName.getter(SEL *a1)
{
  v3 = [v1 *a1];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = [v1 *a1];
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = [objc_opt_self() conversationKit];
    v15._object = 0xE000000000000000;
    v10._countAndFlagsBits = 0x454D495445434146;
    v11.value._countAndFlagsBits = 0x61737265766E6F43;
    v11.value._object = 0xEF74694B6E6F6974;
    v10._object = 0xE800000000000000;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v15._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v8, v12, v15)._countAndFlagsBits;
  }

  v13 = countAndFlagsBits;

  return v13;
}

uint64_t TUConversation.bundleIdentifier.getter()
{
  v1 = outlined bridged method (ob) of @objc TUCallProvider.bundleIdentifier.getter([v0 provider]);
  if (v2)
  {
    return v1;
  }

  v4 = [v0 provider];
  v5 = [v4 identifier];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

id TUConversation.messagesGroupPhoto.getter()
{
  v1 = outlined bridged method (pb) of @objc TUConversation.messagesGroupPhotoData.getter(v0);
  if (v2 >> 60 == 15)
  {
    return 0;
  }

  v4 = v1;
  v5 = v2;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  return UIImage.__allocating_init(data:)(v4, v5);
}

void @nonobjc TUConversation.uuid.getter()
{
  v1 = [v0 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

id @nonobjc TUConversation.initiator.getter()
{
  v1 = [v0 initiator];

  return v1;
}

uint64_t @nonobjc TUConversation.messagesGroupUUID.getter()
{
  v1 = [v0 messagesGroupUUID];
  if (v1)
  {
    v2 = v1;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for UUID();
  v3 = OUTLINED_FUNCTION_2_23();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

id @nonobjc TUConversation.localMember.getter()
{
  v1 = [v0 localMember];

  return v1;
}

id @nonobjc TUConversation.localParticipantAssociation.getter()
{
  v1 = [v0 localParticipantAssociation];

  return v1;
}

id @nonobjc TUConversation.handoffEligibility.getter()
{
  v1 = [v0 handoffEligibility];

  return v1;
}

id @nonobjc TUConversation.link.getter()
{
  v1 = [v0 link];

  return v1;
}

id @nonobjc TUConversation.presentationContext.getter()
{
  v1 = [v0 presentationContext];

  return v1;
}

id @nonobjc TUConversation.joinedActivitySession.getter()
{
  v1 = [v0 joinedActivitySession];

  return v1;
}

uint64_t @nonobjc TUConversation.remoteMembers.getter(SEL *a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v7 = [v4 *a1];
  type metadata accessor for NSObject(0, a2);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(a4, a2);
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t Array<A>.sortedActivities.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = a1 + 32;
  for (i = MEMORY[0x1E69E7CC0]; v1; --v1)
  {
    outlined init with copy of IDSLookupManager(v2, &v22);
    v4 = v23;
    v5 = v24;
    __swift_project_boxed_opaque_existential_1(&v22, v23);
    v6 = (*(v5 + 104))(v4, v5);
    if (v6 && (v7 = v6, v8 = [v6 state], v7, v8 == 2))
    {
      __swift_destroy_boxed_opaque_existential_1(&v22);
    }

    else
    {
      outlined init with take of TapInteractionHandler(&v22, v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = i;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        i = v25;
      }

      v10 = *(i + 16);
      if (v10 >= *(i + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v11 = v20;
      v12 = v21;
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x1EEE9AC00](v13);
      v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v16 + 16))(v15);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v10, v15, &v25, v11, v12);
      __swift_destroy_boxed_opaque_existential_1(v19);
      i = v25;
    }

    v2 += 40;
  }

  *&v22 = i;

  specialized MutableCollection<>.sort(by:)(&v22);

  return v22;
}

uint64_t closure #2 in Array<A>.sortedActivities.getter(void *a1, void *a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v25 - v10;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = (*(v13 + 104))(v12, v13);
  if (v14)
  {
    v15 = v14;
    v25[1] = v2;
    v16 = a2[3];
    v17 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v16);
    v18 = (*(v17 + 104))(v16, v17);
    if (v18)
    {
      v19 = v18;
      v20 = [v15 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = [v19 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = static Date.> infix(_:_:)();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v11, v5);
    }

    else
    {

      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

void specialized Set._Variant.filter(_:)(uint64_t a1, uint64_t a2)
{
  v38 = type metadata accessor for UUID();
  v5 = *(v38 - 8);
  v6 = MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - v8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v32 = v2;
    v33 = MEMORY[0x1E69E7CD0];
    v42 = MEMORY[0x1E69E7CD0];

    v10 = __CocoaSet.makeIterator()();
    v36 = v5 + 16;
    v34 = v10;
    v35 = v5 + 8;
    v39 = a2;
    while (1)
    {
      while (1)
      {
        v11 = __CocoaSet.Iterator.next()();
        if (!v11)
        {
          swift_bridgeObjectRelease_n();

          return;
        }

        v40 = v11;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUScreenSharingRequest);
        swift_dynamicCast();
        v12 = v41;
        if ([v41 originType] != 1 || !objc_msgSend(v12, sel_isLocallyOriginated) || objc_msgSend(v12, sel_type) != 1)
        {
          break;
        }

LABEL_10:
      }

      v13 = 0;
      v14 = *(v39 + 16);
      while (v14 != v13)
      {
        v15 = v38;
        (*(v5 + 16))(v9, v39 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13++, v38);
        v16 = [v12 UUID];
        v17 = v37;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v16) = static UUID.== infix(_:_:)();
        v18 = *(v5 + 8);
        v18(v17, v15);
        v19 = OUTLINED_FUNCTION_112();
        (v18)(v19);
        if (v16)
        {
          goto LABEL_10;
        }
      }

      v20 = v41;
      if (*(v33 + 24) <= *(v33 + 16))
      {
        specialized _NativeSet.resize(capacity:)();
      }

      v21 = v42;
      v22 = NSObject._rawHashValue(seed:)(*(v42 + 40)) & ~(-1 << *(v21 + 32));
      if (((-1 << v22) & ~*(v21 + 56 + 8 * (v22 >> 6))) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_16_9();
LABEL_22:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v25 + 48) + 8 * v24) = v20;
      v31 = *(v25 + 16) + 1;
      v33 = v25;
      *(v25 + 16) = v31;
    }

    OUTLINED_FUNCTION_15_33();
    while (++v27 != v29 || (v28 & 1) == 0)
    {
      v30 = v27 == v29;
      if (v27 == v29)
      {
        v27 = 0;
      }

      v28 |= v30;
      if (*(v26 + 8 * v27) != -1)
      {
        OUTLINED_FUNCTION_13_8();
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {

    specialized _NativeSet.filter(_:)(a1, a2);
  }
}

void specialized closure #1 in _NativeSet.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  specialized closure #1 in _NativeSet.filter(_:)(a1, a2, a3, a4, a5, specialized _NativeSet.extractSubset(using:count:));
}

{
  specialized closure #1 in _NativeSet.filter(_:)(a1, a2, a3, a4, a5, specialized _NativeSet.extractSubset(using:count:));
}

{
  specialized closure #1 in _NativeSet.filter(_:)(a1, a2, a3, a4, a5, specialized _NativeSet.extractSubset(using:count:));
}

{
  specialized closure #1 in _NativeSet.filter(_:)(a1, a2, a3, a4, a5, specialized _NativeSet.extractSubset(using:count:));
}

void specialized closure #1 in _NativeSet.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  v23 = a4;
  v21 = 0;
  v6 = 0;
  v7 = a3 + 56;
  OUTLINED_FUNCTION_33_2();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_9:
    v17 = v13 | (v6 << 6);
    outlined init with copy of CallGameController.GameControllerEventBox(*(a3 + 48) + 40 * v17, v22);
    v18 = v23(v22);
    outlined destroy of CallGameController.GameControllerEventBox(v22);
    if (v4)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_14:

        specialized _NativeSet.extractSubset(using:count:)();
        return;
      }
    }
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v12)
    {
      goto LABEL_14;
    }

    ++v14;
    if (*(v7 + 8 * v6))
    {
      OUTLINED_FUNCTION_7_1();
      v10 = v16 & v15;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void specialized closure #1 in _NativeSet.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v25 = 0;
  v7 = 0;
  v8 = a3 + 56;
  OUTLINED_FUNCTION_33_2();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  while (v11)
  {
    OUTLINED_FUNCTION_93();
LABEL_9:
    v18 = v14 | (v7 << 6);
    v28 = *(*(a3 + 48) + 8 * v18);
    v19 = v28;
    v20 = a4(&v28);

    if (v6)
    {
      return;
    }

    if (v20)
    {
      *(a1 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
LABEL_14:

        a6(a1, a2, v25, a3);
        return;
      }
    }
  }

  v15 = v7;
  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v13)
    {
      goto LABEL_14;
    }

    ++v15;
    if (*(v8 + 8 * v7))
    {
      OUTLINED_FUNCTION_7_1();
      v11 = v17 & v16;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo22TUScreenSharingRequestCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So22ijK5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n041_s15ConversationKit0A0PAAE27currentScreenJ68Request8ignoringSo08TUScreeneF0CSgSay10Foundation4UUIDVG_tFSbAGXEfU_Say10Foundation4UUIDVGTf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    specialized closure #1 in _NativeSet.filter(_:)(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo20TUConversationMemberCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So20iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeSet.filter(_:)(v9, a2, a3, a4, a5, specialized _NativeSet.extractSubset(using:count:));
    v11 = v10;

    return v11;
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v122 = a1;
  v132 = type metadata accessor for Date();
  v6 = MEMORY[0x1EEE9AC00](v132);
  v131 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v130 = &v118 - v9;
  v127 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v139 = *v122;
    if (!v139)
    {
      goto LABEL_144;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a4 = v128;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_103;
    }

    goto LABEL_138;
  }

  v120 = a4;
  v11 = 0;
  v129 = (v8 + 8);
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = v11++;
    if (v11 < v10)
    {
      v125 = v10;
      v14 = *v127;
      a4 = 40;
      outlined init with copy of IDSLookupManager(&(*v127)[40 * v11], &v136);
      outlined init with copy of IDSLookupManager(&v14[40 * v13], v133);
      v15 = v128;
      LODWORD(v139) = closure #2 in Array<A>.sortedActivities.getter(&v136, v133);
      v128 = v15;
      if (v15)
      {
        __swift_destroy_boxed_opaque_existential_1(v133);
        __swift_destroy_boxed_opaque_existential_1(&v136);
LABEL_113:

        return;
      }

      __swift_destroy_boxed_opaque_existential_1(v133);
      __swift_destroy_boxed_opaque_existential_1(&v136);
      v124 = 40 * v13;
      v16 = v13;
      v17 = &v14[40 * v13 + 80];
      v121 = v16;
      v18 = v16 + 2;
      v19 = v125;
      while (1)
      {
        v20 = v18;
        if (v11 + 1 >= v19)
        {
          break;
        }

        outlined init with copy of IDSLookupManager(v17, &v136);
        outlined init with copy of IDSLookupManager(v17 - 40, v133);
        v21 = v137;
        v22 = v138;
        a4 = __swift_project_boxed_opaque_existential_1(&v136, v137);
        v23 = (*(v22 + 104))(v21, v22);
        if (v23)
        {
          v24 = v23;
          v25 = v134;
          v26 = v135;
          a4 = __swift_project_boxed_opaque_existential_1(v133, v134);
          v27 = (*(v26 + 104))(v25, v26);
          if (v27)
          {
            v28 = v27;
            v29 = [v24 timestamp];
            v126 = v11;
            v30 = v130;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v31 = [v28 timestamp];
            v32 = v131;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v33 = static Date.> infix(_:_:)();
            a4 = *v129;
            v34 = v132;
            (*v129)(v32, v132);
            v35 = v30;
            v11 = v126;
            (a4)(v35, v34);
            v19 = v125;
          }

          else
          {

            v33 = 1;
          }
        }

        else
        {
          v33 = 0;
        }

        __swift_destroy_boxed_opaque_existential_1(v133);
        __swift_destroy_boxed_opaque_existential_1(&v136);
        v17 += 40;
        ++v11;
        v18 = v20 + 1;
        if ((v139 & 1) != (v33 & 1))
        {
          goto LABEL_15;
        }
      }

      v11 = v19;
LABEL_15:
      if ((v139 & 1) == 0)
      {
        goto LABEL_26;
      }

      v13 = v121;
      if (v11 < v121)
      {
        goto LABEL_137;
      }

      if (v121 < v11)
      {
        if (v19 >= v20)
        {
          v36 = v20;
        }

        else
        {
          v36 = v19;
        }

        v37 = 40 * v36 - 40;
        v38 = v121;
        v39 = v11;
        v40 = v124;
        do
        {
          if (v38 != --v39)
          {
            v41 = *v127;
            if (!*v127)
            {
              goto LABEL_142;
            }

            a4 = &v41[v40];
            v42 = &v41[v37];
            outlined init with take of TapInteractionHandler(&v41[v40], &v136);
            v43 = *(v42 + 32);
            v44 = *(v42 + 16);
            *a4 = *v42;
            *(a4 + 16) = v44;
            *(a4 + 32) = v43;
            outlined init with take of TapInteractionHandler(&v136, v42);
          }

          ++v38;
          v37 -= 40;
          v40 += 40;
        }

        while (v38 < v39);
LABEL_26:
        v13 = v121;
      }
    }

    v45 = v127[1];
    if (v11 < v45)
    {
      if (__OFSUB__(v11, v13))
      {
        goto LABEL_134;
      }

      if (v11 - v13 < v120)
      {
        break;
      }
    }

LABEL_49:
    if (v11 < v13)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v12 = v108;
    }

    v66 = *(v12 + 2);
    v67 = v66 + 1;
    if (v66 >= *(v12 + 3) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v12 = v109;
    }

    *(v12 + 2) = v67;
    v68 = v12 + 32;
    v69 = &v12[16 * v66 + 32];
    *v69 = v13;
    *(v69 + 1) = v11;
    v139 = *v122;
    if (!v139)
    {
      goto LABEL_143;
    }

    if (v66)
    {
      while (1)
      {
        v70 = v67 - 1;
        v71 = &v68[16 * v67 - 16];
        v72 = &v12[16 * v67];
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v73 = *(v12 + 4);
          v74 = *(v12 + 5);
          v83 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          v76 = v83;
LABEL_69:
          if (v76)
          {
            goto LABEL_120;
          }

          v88 = *v72;
          v87 = *(v72 + 1);
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_123;
          }

          v92 = *(v71 + 1);
          v93 = v92 - *v71;
          if (__OFSUB__(v92, *v71))
          {
            goto LABEL_126;
          }

          if (__OFADD__(v90, v93))
          {
            goto LABEL_128;
          }

          if (v90 + v93 >= v75)
          {
            if (v75 < v93)
            {
              v70 = v67 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v67 < 2)
        {
          goto LABEL_122;
        }

        v95 = *v72;
        v94 = *(v72 + 1);
        v83 = __OFSUB__(v94, v95);
        v90 = v94 - v95;
        v91 = v83;
LABEL_84:
        if (v91)
        {
          goto LABEL_125;
        }

        v97 = *v71;
        v96 = *(v71 + 1);
        v83 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v83)
        {
          goto LABEL_127;
        }

        if (v98 < v90)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v70 - 1 >= v67)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v127)
        {
          goto LABEL_140;
        }

        v102 = &v68[16 * v70 - 16];
        v103 = *v102;
        v104 = &v68[16 * v70];
        v105 = *(v104 + 1);
        v106 = v128;
        specialized _merge<A>(low:mid:high:buffer:by:)(&(*v127)[40 * *v102], &(*v127)[40 * *v104], &(*v127)[40 * v105], v139);
        v128 = v106;
        if (v106)
        {
          goto LABEL_113;
        }

        if (v105 < v103)
        {
          goto LABEL_115;
        }

        a4 = v12;
        v12 = *(v12 + 2);
        if (v70 > v12)
        {
          goto LABEL_116;
        }

        *v102 = v103;
        *(v102 + 1) = v105;
        if (v70 >= v12)
        {
          goto LABEL_117;
        }

        v67 = (v12 - 1);
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v104 + 16, &v12[-v70 - 1], &v68[16 * v70]);
        *(a4 + 16) = v12 - 1;
        v107 = v12 > 2;
        v12 = a4;
        if (!v107)
        {
          goto LABEL_98;
        }
      }

      v77 = &v68[16 * v67];
      v78 = *(v77 - 8);
      v79 = *(v77 - 7);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_118;
      }

      v82 = *(v77 - 6);
      v81 = *(v77 - 5);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_119;
      }

      v84 = *(v72 + 1);
      v85 = v84 - *v72;
      if (__OFSUB__(v84, *v72))
      {
        goto LABEL_121;
      }

      v83 = __OFADD__(v75, v85);
      v86 = v75 + v85;
      if (v83)
      {
        goto LABEL_124;
      }

      if (v86 >= v80)
      {
        v100 = *v71;
        v99 = *(v71 + 1);
        v83 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v83)
        {
          goto LABEL_132;
        }

        if (v75 < v101)
        {
          v70 = v67 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v10 = v127[1];
    if (v11 >= v10)
    {
      goto LABEL_101;
    }
  }

  v46 = (v13 + v120);
  if (__OFADD__(v13, v120))
  {
    goto LABEL_135;
  }

  if (v46 >= v45)
  {
    v46 = v127[1];
  }

  if (v46 < v13)
  {
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
LABEL_103:
    v111 = v12 + 16;
    v112 = *(v12 + 2);
    while (v112 >= 2)
    {
      if (!*v127)
      {
        goto LABEL_141;
      }

      v113 = v12;
      v114 = &v12[16 * v112];
      v12 = *v114;
      v115 = &v111[2 * v112];
      v116 = *(v115 + 1);
      specialized _merge<A>(low:mid:high:buffer:by:)(&(*v127)[40 * *v114], &(*v127)[40 * *v115], &(*v127)[40 * v116], v139);
      if (a4)
      {
        break;
      }

      if (v116 < v12)
      {
        goto LABEL_129;
      }

      if (v112 - 2 >= *v111)
      {
        goto LABEL_130;
      }

      *v114 = v12;
      *(v114 + 1) = v116;
      v117 = *v111 - v112;
      if (*v111 < v112)
      {
        goto LABEL_131;
      }

      v112 = *v111 - 1;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v115 + 16, v117, v115);
      *v111 = v112;
      v12 = v113;
    }

    goto LABEL_113;
  }

  if (v11 == v46)
  {
    goto LABEL_49;
  }

  v119 = v12;
  v139 = *v127;
  v47 = &v139[40 * v11];
  v121 = v13;
  v48 = v13 - v11;
  v123 = v46;
LABEL_36:
  v125 = v47;
  v126 = v11;
  v124 = v48;
  v49 = v48;
  v50 = v47;
  while (1)
  {
    outlined init with copy of IDSLookupManager(v50, &v136);
    outlined init with copy of IDSLookupManager(v50 - 40, v133);
    v51 = v137;
    v52 = v138;
    a4 = __swift_project_boxed_opaque_existential_1(&v136, v137);
    v53 = (*(v52 + 104))(v51, v52);
    if (!v53)
    {
      __swift_destroy_boxed_opaque_existential_1(v133);
      __swift_destroy_boxed_opaque_existential_1(&v136);
LABEL_47:
      v11 = v126 + 1;
      v47 = (v125 + 40);
      v48 = v124 - 1;
      if (v126 + 1 == v123)
      {
        v11 = v123;
        v12 = v119;
        v13 = v121;
        goto LABEL_49;
      }

      goto LABEL_36;
    }

    v54 = v53;
    v56 = v134;
    v55 = v135;
    a4 = __swift_project_boxed_opaque_existential_1(v133, v134);
    v57 = (*(v55 + 104))(v56, v55);
    if (v57)
    {
      v58 = v57;
      v59 = [v54 timestamp];
      v60 = v130;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v61 = [v58 timestamp];
      v62 = v131;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v61) = static Date.> infix(_:_:)();
      a4 = *v129;
      v63 = v132;
      (*v129)(v62, v132);
      (a4)(v60, v63);
      __swift_destroy_boxed_opaque_existential_1(v133);
      __swift_destroy_boxed_opaque_existential_1(&v136);
      if ((v61 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v133);
      __swift_destroy_boxed_opaque_existential_1(&v136);
    }

    if (!v139)
    {
      break;
    }

    outlined init with take of TapInteractionHandler(v50, &v136);
    v64 = *(v50 - 24);
    *v50 = *(v50 - 40);
    *(v50 + 16) = v64;
    *(v50 + 32) = *(v50 - 8);
    outlined init with take of TapInteractionHandler(&v136, v50 - 40);
    v50 -= 40;
    if (__CFADD__(v49++, 1))
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t outlined bridged method (pb) of @objc TUConversation.messagesGroupName.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t partial apply for closure #1 in Conversation.allHandles(excludeOtherInvitedHandles:)(id *a1)
{
  if (*(v1 + 16) == 1)
  {
    return [*a1 isOtherInvitedHandle] ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t outlined init with take of Collaboration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Collaboration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of TapInteractionHandler(&v12, v10 + 40 * a1 + 32);
}

uint64_t outlined destroy of UUID?(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_39_1(a1, a2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *SharedContentVideoView.ViewModel.init(screenProvider:screenTransform:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 32) = *(a1 + 32);
  return OUTLINED_FUNCTION_2_15((a3 + 40), a2);
}

BOOL static SharedContentVideoView.ViewModel.== infix(_:_:)()
{
  Hasher.init(_seed:)();
  SharedContentVideoView.ViewModel.hash(into:)();
  v0 = Hasher._finalize()();
  Hasher.init(_seed:)();
  SharedContentVideoView.ViewModel.hash(into:)();
  return v0 == Hasher._finalize()();
}

id SharedContentVideoView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void SharedContentVideoView.configure(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC15ConversationKit22SharedContentVideoView_viewModel];
  swift_beginAccess();
  outlined init with copy of Participant?(v4, v23, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMd);
  v5 = v24;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v23, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMd);
  if (v5 == 1)
  {
    goto LABEL_2;
  }

  v7 = *(v4 + 3);
  if (v7 >= 2)
  {
    v10 = *(v4 + 4);
    v11 = __swift_project_boxed_opaque_existential_1(v4, *(v4 + 3));
    v12 = *(v7 - 8);
    v13 = MEMORY[0x1EEE9AC00](v11);
    v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v12 + 16))(v15, v13);
    v8 = (*(v10 + 8))(v7, v10);
    v9 = v16;
    (*(v12 + 8))(v15, v7);
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  outlined init with copy of Participant?(a1, v23, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
  v17 = v24;
  if (!v24)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v23, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
    if (v9)
    {
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  v18 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v19 = (*(v18 + 8))(v17, v18);
  v21 = v20;
  __swift_destroy_boxed_opaque_existential_1(v23);
  if (v9)
  {
    if (v21)
    {
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  if ((v21 & 1) != 0 || v8 != v19)
  {
LABEL_2:
    SharedContentVideoView.registerVideoLayers(with:)(a1);
  }

LABEL_3:
  outlined init with copy of SharedContentVideoView.ViewModel(a1, v23);
  swift_beginAccess();
  outlined assign with take of Participant?(v23, v4, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMd);
  swift_endAccess();
  v6 = [v2 layer];
  MEMORY[0x1EEE9AC00](v6);
  CALayer.withoutActions(_:)(partial apply for closure #1 in closure #1 in SharedContentVideoView.configure(with:));
}

uint64_t SharedContentVideoView.registerVideoLayers(with:)(uint64_t a1)
{
  outlined init with copy of Participant?(a1, v5, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
  if (!v6)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
  }

  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = [*(v1 + OBJC_IVAR____TtC15ConversationKit22SharedContentVideoView_screenSharingCameraView) layer];
  (*(v2 + 120))();

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

double SharedContentVideoView.ViewModel.contentsRect.getter()
{
  outlined init with copy of Participant?(v0, v4, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    (*(v2 + 64))(&v7, v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
  }

  return 0.0;
}

char *SharedContentVideoView.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC15ConversationKit22SharedContentVideoView_screenSharingCameraView;
  v3 = type metadata accessor for ParticipantVideoCameraView();
  v4 = objc_allocWithZone(v3);
  v4[OBJC_IVAR____TtC15ConversationKit26ParticipantVideoCameraView_style] = 1;
  v10.receiver = v4;
  v10.super_class = v3;
  *&v0[v2] = OUTLINED_FUNCTION_0_3(&v10, sel_initWithFrame_);
  v5 = &v0[OBJC_IVAR____TtC15ConversationKit22SharedContentVideoView_viewModel];
  *v5 = 0;
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *(v5 + 3) = 1;
  bzero(v5 + 32, 0x88uLL);
  v9.receiver = v0;
  v9.super_class = ObjectType;
  v6 = OUTLINED_FUNCTION_0_3(&v9, sel_initWithFrame_);
  [v6 setClipsToBounds_];
  v7 = OBJC_IVAR____TtC15ConversationKit22SharedContentVideoView_screenSharingCameraView;
  outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0xD000000000000021, 0x80000001BC525640, *&v6[OBJC_IVAR____TtC15ConversationKit22SharedContentVideoView_screenSharingCameraView]);
  [v6 addSubview_];

  return v6;
}

id SharedContentVideoView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SharedContentVideoView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22SharedContentVideoView_screenSharingCameraView;
  v2 = type metadata accessor for ParticipantVideoCameraView();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR____TtC15ConversationKit26ParticipantVideoCameraView_style] = 1;
  v5.receiver = v3;
  v5.super_class = v2;
  *(v0 + v1) = OUTLINED_FUNCTION_0_3(&v5, sel_initWithFrame_);
  v4 = (v0 + OBJC_IVAR____TtC15ConversationKit22SharedContentVideoView_viewModel);
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 1;
  bzero(v4 + 4, 0x88uLL);
  OUTLINED_FUNCTION_2_179();
  __break(1u);
}

id SharedContentVideoView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void SharedContentVideoView.init(frame:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22SharedContentVideoView_screenSharingCameraView;
  v2 = type metadata accessor for ParticipantVideoCameraView();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR____TtC15ConversationKit26ParticipantVideoCameraView_style] = 1;
  v5.receiver = v3;
  v5.super_class = v2;
  *(v0 + v1) = OUTLINED_FUNCTION_0_3(&v5, sel_initWithFrame_);
  v4 = (v0 + OBJC_IVAR____TtC15ConversationKit22SharedContentVideoView_viewModel);
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 1;
  bzero(v4 + 4, 0x88uLL);
  OUTLINED_FUNCTION_2_179();
  __break(1u);
}

Swift::Void __swiftcall SharedContentVideoView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  SharedContentVideoView._layout()();
}

uint64_t SharedContentVideoView._layout()()
{
  v1 = v0;
  [v0 bounds];
  result = CGRectIsInfinite(v23);
  if (result)
  {
    return result;
  }

  [v0 bounds];
  result = CGRectIsEmpty(v24);
  if (result)
  {
    return result;
  }

  [v0 bounds];
  v4 = v3;
  v6 = v5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((*(*static Defaults.shared + 312))())
  {
    v21 = v0;
    v7 = outlined bridged method (ob) of @objc CALayer.sublayers.getter([*&v0[OBJC_IVAR____TtC15ConversationKit22SharedContentVideoView_screenSharingCameraView] layer]);
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v9 = specialized Array.count.getter(v8);
    if (v9)
    {
      v10 = v9;
      result = objc_opt_self();
      if (v10 < 1)
      {
        goto LABEL_29;
      }

      v11 = result;
      v12 = 0;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1BFB22010](v12, v8);
        }

        else
        {
          v13 = *(v8 + 8 * v12 + 32);
        }

        v14 = v13;
        ++v12;
        [v11 begin];
        [v11 setDisableActions_];
        [v14 setFrame_];
        [v11 commit];
      }

      while (v10 != v12);
    }

    v1 = v21;
  }

  v15 = [v1 subviews];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = specialized Array.count.getter(v16);
  if (result)
  {
    v17 = result;
    if (result >= 1)
    {
      for (i = 0; i != v17; ++i)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1BFB22010](i, v16);
        }

        else
        {
          v19 = *(v16 + 8 * i + 32);
        }

        v20 = v19;
        [v19 setFrame_];
      }

      goto LABEL_25;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

LABEL_25:
}

void closure #1 in closure #1 in SharedContentVideoView.configure(with:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (((*(*static Defaults.shared + 312))() & 1) == 0)
  {
    v4 = *(a1 + OBJC_IVAR____TtC15ConversationKit22SharedContentVideoView_screenSharingCameraView);
    v5 = [v4 layer];
    SharedContentVideoView.ViewModel.contentsRect.getter();
    [v5 setContentsRect_];

    v6 = [v4 layer];
    memcpy(v7, (a2 + 40), sizeof(v7));
    [v6 setTransform_];
  }
}

id SharedContentVideoView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int SharedContentVideoView.ViewModel.hashValue.getter()
{
  Hasher.init(_seed:)();
  SharedContentVideoView.ViewModel.hash(into:)();
  return Hasher._finalize()();
}

uint64_t SharedContentVideoView.ViewModel.hash(into:)()
{
  v1 = v0;
  outlined init with copy of Participant?(v0, v10, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
  v2 = v10[3];
  if (!v10[3])
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
    goto LABEL_5;
  }

  v3 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v4 = (*(v3 + 8))(v2, v3);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(v10);
  if (v6)
  {
LABEL_5:
    Hasher._combine(_:)(0);
    goto LABEL_6;
  }

  Hasher._combine(_:)(1u);
  MEMORY[0x1BFB22640](v4);
LABEL_6:
  memcpy(v10, (v1 + 40), sizeof(v10));
  CATransform3D.hash(into:)();
  SharedContentVideoView.ViewModel.contentsRect.getter();
  return CGRect.hash(into:)(0.0, 0.0, v7, v8);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SharedContentVideoView.ViewModel()
{
  Hasher.init(_seed:)();
  SharedContentVideoView.ViewModel.hash(into:)();
  return Hasher._finalize()();
}

uint64_t outlined bridged method (ob) of @objc CALayer.sublayers.getter(void *a1)
{
  v2 = [a1 sublayers];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CALayer);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t lazy protocol witness table accessor for type SharedContentVideoView.ViewModel and conformance SharedContentVideoView.ViewModel()
{
  result = lazy protocol witness table cache variable for type SharedContentVideoView.ViewModel and conformance SharedContentVideoView.ViewModel;
  if (!lazy protocol witness table cache variable for type SharedContentVideoView.ViewModel and conformance SharedContentVideoView.ViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedContentVideoView.ViewModel and conformance SharedContentVideoView.ViewModel);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharedContentVideoView.ViewModel(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 168))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SharedContentVideoView.ViewModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

Swift::Void __swiftcall LocalParticipantControlsView.updateViews()()
{
  v1 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  v59 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit21SymbolImageDescribersV20LocalParticipantViewO_So9UIControlCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BB450;
  *(inited + 32) = 1;
  v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraBlurButton);
  *(inited + 40) = v5;
  *(inited + 48) = 0;
  v6 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraFlipButton);
  *(inited + 56) = v6;
  *(inited + 64) = 2;
  v7 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cinematicFramingButton);
  *(inited + 72) = v7;
  *(inited + 80) = 3;
  v8 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_effectsButton);
  *(inited + 88) = v8;
  *(inited + 96) = 11;
  v9 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_reactionEffectGestureButton);
  *(inited + 104) = v9;
  *(inited + 112) = 12;
  v10 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_studioLightButton);
  *(inited + 120) = v10;
  v66 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIControl);
  lazy protocol witness table accessor for type SymbolImageDescribers.LocalParticipantView and conformance SymbolImageDescribers.LocalParticipantView();
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = Dictionary.init(dictionaryLiteral:)();
  v18 = 0;
  v20 = v17 + 64;
  v19 = *(v17 + 64);
  v65 = v17;
  v21 = 1 << *(v17 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v19;
  v24 = (v21 + 63) >> 6;
  v63 = *MEMORY[0x1E69DDDC8];
  v61 = *MEMORY[0x1E69DDD10];
  v25 = MEMORY[0x1E69E7D40];
  v60 = *MEMORY[0x1E69DDCF8];
  v66 = v0;
  v64 = v17 + 64;
  v62 = v24;
  if (v23)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v26 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v26 >= v24)
    {
      break;
    }

    v23 = *(v20 + 8 * v26);
    ++v18;
    if (v23)
    {
      v18 = v26;
      do
      {
LABEL_8:
        v27 = __clz(__rbit64(v23)) | (v18 << 6);
        v28 = *(*(v65 + 48) + v27);
        v29 = *(*(v65 + 56) + 8 * v27);
        SymbolImageDescribers.LocalParticipantView.symbolImageDescription.getter(v28, &v72);
        v77 = v74;
        v30 = (*((*v25 & *v0) + 0x250))();
        v31 = [objc_opt_self() currentDevice];
        v32 = [v31 userInterfaceIdiom];

        v33 = v63;
        if (v30 - 2 >= 2)
        {
          v34 = v30 || v32 == 1;
          v33 = v61;
          if (v34)
          {
            v33 = v60;
          }
        }

        v35 = v33;
        outlined destroy of UIFontTextStyle(&v77, type metadata accessor for UIFontTextStyle);
        type metadata accessor for InCallControlButton();
        v36 = swift_dynamicCastClass();
        if (v36)
        {
          v68 = v72;
          *&v69 = v73;
          *(&v69 + 1) = v35;
          v70 = v75;
          v71 = v76;
          v37 = *MEMORY[0x1E69E7D40] & *v36;
          v78[0] = v72;
          v78[1] = v69;
          v78[2] = v75;
          v78[3] = v76;
          v38 = *(v37 + 416);
          v39 = v29;
          outlined init with copy of SymbolImageDescription(&v68, &v67);
          v38(v78);
          v0 = v66;
        }

        v23 &= v23 - 1;
        [v29 setNeedsLayout];

        v68 = v72;
        *&v69 = v73;
        *(&v69 + 1) = v35;
        v70 = v75;
        v71 = v76;
        outlined destroy of SymbolImageDescription(&v68);
        v25 = MEMORY[0x1E69E7D40];
        v20 = v64;
        v24 = v62;
      }

      while (v23);
    }
  }

  OUTLINED_FUNCTION_5_27();
  if ((*(v40 + 896))())
  {
    LocalParticipantControlsView.addVideoMessageControls()();
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_5_27();
  v42 = (*(v41 + 352))();
  if (v42)
  {
    v43 = v42;
    v44 = [v42 view];

    if (v44)
    {
      v45 = [v44 superview];

      if (v45)
      {

        OUTLINED_FUNCTION_5_27();
        if ((*(v46 + 904))())
        {
          LocalParticipantControlsView.removeVideoMessageControls()();
        }
      }

      goto LABEL_26;
    }

LABEL_40:
    __break(1u);
    return;
  }

LABEL_26:
  OUTLINED_FUNCTION_5_27();
  v48 = v59;
  (*(v47 + 712))();
  OUTLINED_FUNCTION_13_2();
  v50 = (*((*v25 & v49) + 0x430))(v48);
  OUTLINED_FUNCTION_0_229();
  outlined destroy of UIFontTextStyle(v48, v51);
  v52 = specialized Array.count.getter(v50);
  for (i = 0; v52 != i; ++i)
  {
    if ((v50 & 0xC000000000000001) != 0)
    {
      v54 = MEMORY[0x1BFB22010](i, v50);
    }

    else
    {
      if (i >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v54 = *(v50 + 8 * i + 32);
    }

    v55 = v54;
    if (__OFADD__(i, 1))
    {
      goto LABEL_38;
    }

    objc_opt_self();
    v56 = swift_dynamicCastObjCClass();
    if (v56)
    {
      v57 = v56;
      OUTLINED_FUNCTION_5_18();
      [v57 setEnabled_];
    }
  }

  [v66 setNeedsLayout];
}

void LocalParticipantControlsView.changed(_:from:)(_BYTE *a1, _BYTE *a2)
{
  v154 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v154);
  OUTLINED_FUNCTION_17();
  v149 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_32();
  v152 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  v151 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_32();
  v153 = v15;
  OUTLINED_FUNCTION_13_2();
  v17 = *((*MEMORY[0x1E69E7D40] & v16) + 0x430);
  v155 = a1;
  v18 = v17(a1);
  v150 = a2;
  v156 = v2;
  v19 = v17(a2);
  v158 = MEMORY[0x1E69E7CC0];
  v20 = specialized Array.count.getter(v19);
  v21 = 0;
  v22 = 0;
  v23 = v19 & 0xC000000000000001;
  while (v20 != v21)
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v21, v23 == 0, v19);
    if (v23)
    {
      v24 = MEMORY[0x1BFB22010](v21, v19);
    }

    else
    {
      v24 = *(v19 + 8 * v21 + 32);
    }

    v3 = v24;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      v98 = v149;
      outlined init with copy of ConversationControlsRecipe(v19, v149);
      v99 = objc_allocWithZone(type metadata accessor for CallAgainHUDView());
      v100 = CallAgainHUDView.init(recipe:)(v98);
      [v100 setTranslatesAutoresizingMaskIntoConstraints_];
      [v100 setAccessibilityViewIsModal_];
      OUTLINED_FUNCTION_16_73(*&v100[OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_videoMessageButton], v101, v102, sel_handleVideoMessageButtonTapped);
      OUTLINED_FUNCTION_16_73(*&v100[OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_callBackButton], v103, v104, sel_callBack);
      OUTLINED_FUNCTION_16_73(*&v100[OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_showCallDetailsButton], v105, v106, sel_showCallDetails);
      OUTLINED_FUNCTION_16_73(*&v100[OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_closeButton], v107, v108, sel_close);
      [v20 addSubview_];
      v109 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x198);
      v95 = v100;
      v109(v100);
      v47 = 0x1FAEA9000;
      v39 = v155;
LABEL_82:

      goto LABEL_83;
    }

    v157 = v24;
    MEMORY[0x1EEE9AC00](v24);
    v148 = &v157;
    if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v147, v18))
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      OUTLINED_FUNCTION_20_64();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    ++v21;
  }

  v25 = v158;
  v19 = specialized Array.count.getter(v158);
  v20 = 0;
  v23 = v156;
  while (v19 != v20)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1BFB22010](v20, v25);
    }

    else
    {
      if (v20 >= *(v25 + 16))
      {
        goto LABEL_80;
      }

      v26 = *(v25 + 8 * v20 + 32);
    }

    v3 = v26;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_79;
    }

    [v26 removeFromSuperview];

    ++v20;
  }

  v27 = specialized Array.count.getter(v18);
  if (v27)
  {
    v28 = v27;
    if (v27 < 1)
    {
      __break(1u);
      return;
    }

    for (i = 0; i != v28; ++i)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1BFB22010](i, v18);
      }

      else
      {
        v30 = *(v18 + 8 * i + 32);
      }

      v31 = v30;
      type metadata accessor for InCallControlButton();
      if (swift_dynamicCastClass())
      {
        v32 = one-time initialization token for localCameraControls;
        v33 = v31;
        if (v32 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_5_18();
        v35 = *(v34 + 464);

        v35(v36);

        v23 = v156;
      }

      [v23 addSubview_];
    }
  }

  v3 = *((*MEMORY[0x1E69E7D40] & *v23) + 0x190);
  v38 = (v3)(v37);
  v39 = v155;
  if (v38)
  {

    v40 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
    v41 = v153;
    outlined init with copy of ConversationControlsRecipe?(&v39[*(v40 + 32)], v153);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v154);
    v43 = outlined destroy of ConversationControlsRecipe?(v41);
    if (EnumTagSinglePayload == 1)
    {
      v44 = (v3)(v43);
      if (v44)
      {
        v45 = v44;
        [v44 removeFromSuperview];
      }

      (*((*MEMORY[0x1E69E7D40] & *v23) + 0x198))(0);
    }
  }

  v46 = [objc_opt_self() clearColor];
  [v23 setBackgroundColor_];

  v47 = &off_1E7FE9000;
  [*(v23 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_collapseButton) addTarget:v23 action:sel_handleCollapseButtonTapped forControlEvents:64];
  v22 = v39[7];
  v49 = VideoMessageController.State.rawValue.getter(v39[7]) == 0x7964616552746F6ELL && v48 == 0xE800000000000000;
  if (v49)
  {
    goto LABEL_46;
  }

  v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v50)
  {
    goto LABEL_47;
  }

  v18 = 0xEB00000000656C62;
  v23 = 0x616C696176616E75;
  if (VideoMessageController.State.rawValue.getter(v22) == 0x616C696176616E75 && v52 == 0xEB00000000656C62)
  {
  }

  else
  {
    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v54 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  if (v39[8])
  {
    goto LABEL_47;
  }

LABEL_53:
  static Platform.current.getter();
  OUTLINED_FUNCTION_12_102();
  if (v49)
  {
    goto LABEL_47;
  }

  v61 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  v62 = v151;
  outlined init with copy of ConversationControlsRecipe?(&v39[*(v61 + 32)], v151);
  if (__swift_getEnumTagSinglePayload(v62, 1, v154) == 1)
  {
    v63 = &off_1E7FE9000;
    outlined destroy of ConversationControlsRecipe?(v62);
  }

  else
  {
    v19 = v152;
    v92 = outlined init with take of ConversationControlsRecipe(v62, v152);
    v20 = v156;
    v93 = (v3)(v92);
    if (!v93)
    {
      goto LABEL_81;
    }

    v94 = (v3)();
    if (v94)
    {
      v95 = v94;
      v96 = v149;
      outlined init with copy of ConversationControlsRecipe(v152, v149);
      OUTLINED_FUNCTION_34_40();
      (*(v97 + 200))(v96);
      goto LABEL_82;
    }

LABEL_83:
    v110 = (v3)();
    if (v110)
    {
      v111 = v110;
      v112 = *(v110 + OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_videoMessageButton);

      if (VideoMessageController.State.rawValue.getter(v22) == v23 && v113 == v18)
      {

        v116 = 0;
      }

      else
      {
        v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v116 = v115 ^ 1;
      }

      [v112 setEnabled_];
    }

    v63 = v47;
    outlined destroy of UIFontTextStyle(v152, type metadata accessor for ConversationControlsRecipe);
  }

  v117 = v156;
  v118 = *(v156 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_videoPauseButton);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction);
  MEMORY[0x1BFB209B0](0xD000000000000021, 0x80000001BC5256F0);
  v119 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v147[1] = partial apply for closure #3 in LocalParticipantControlsView.changed(_:from:);
  v148 = v119;
  v147[0] = 0;
  v120 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v118 addAction:v120 forControlEvents:64];

  if ((v22 & 0xFE) == 2)
  {
    v121 = MEMORY[0x1E69E7D40];
    v122 = (*((*MEMORY[0x1E69E7D40] & *v117) + 0x410))(0);
    v123 = *((*v121 & *v117) + 0x178);
    v124 = (v123)(v122);
    OUTLINED_FUNCTION_42_35();
    OUTLINED_FUNCTION_13_2();
    (*((*v121 & v125) + 0x158))();

    v126 = v123();
    v39 = v155;
    v127 = v126;
    (*((*v121 & *v126) + 0xF8))(3);

LABEL_111:
    v47 = v63;
    goto LABEL_47;
  }

  v128 = v150[7];
  if (v128 == 5)
  {
    v129 = VideoMessageController.State.rawValue.getter(v22);
    v119 = v130;
    if (v129 == VideoMessageController.State.rawValue.getter(5) && v119 == v131)
    {
    }

    else
    {
      v133 = OUTLINED_FUNCTION_15_4();

      if ((v133 & 1) == 0)
      {
        v51 = (*((*MEMORY[0x1E69E7D40] & *v117) + 0x410))(0);
        goto LABEL_111;
      }
    }
  }

  if (v22 == 6)
  {
    LocalParticipantControlsView.showLoading()();
    goto LABEL_111;
  }

  if (v22 == 5)
  {
    v134 = VideoMessageController.State.rawValue.getter(v128);
    v119 = v135;
    if (v134 == VideoMessageController.State.rawValue.getter(5) && v119 == v136)
    {
    }

    else
    {
      v138 = OUTLINED_FUNCTION_15_4();

      if ((v138 & 1) == 0)
      {
        v139 = MEMORY[0x1E69E7D40];
        v140 = (*((*MEMORY[0x1E69E7D40] & *v117) + 0x178))(v51);
        OUTLINED_FUNCTION_42_35();
        OUTLINED_FUNCTION_13_2();
        (*((*v139 & v141) + 0x158))();

        LocalParticipantControlsView.startElapsedTimeCounter()();
        goto LABEL_111;
      }
    }
  }

  v47 = v63;
  if (v128 == 6)
  {
    OUTLINED_FUNCTION_38_41();
    if (VideoMessageController.State.rawValue.getter(v22) != v119 || v142 != 0xEF676E6964726F63)
    {
      v144 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v144 & 1) == 0)
      {
        OUTLINED_FUNCTION_5_18();
        v146 = (*(v145 + 448))();
        [v146 removeFromSuperview];
      }

      goto LABEL_47;
    }

LABEL_46:
  }

LABEL_47:
  v55 = v156;
  v56 = *((*MEMORY[0x1E69E7D40] & *v156) + 0x280);
  if (((v56)(v51) & 0x10000) != 0)
  {
    static Platform.current.getter();
    OUTLINED_FUNCTION_12_102();
    if (!v49)
    {
      v57 = *&v55[OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_effectsButton];
      [v57 v47[489]];
      v58 = *&v55[OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_controlsLayoutGuide];
      [v55 addLayoutGuide_];
      if (static Platform.current.getter() == 1)
      {
        v59 = [v58 widthAnchor];
        v60 = [v59 constraintEqualToConstant_];
      }

      else
      {
        v64 = [v58 leadingAnchor];
        v59 = [v57 leadingAnchor];
        v60 = [v64 constraintEqualToAnchor_];
      }

      if ((v56() & 0x1000000) != 0)
      {
        v65 = [*&v55[OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraFlipButton] trailingAnchor];
      }

      else
      {
        v65 = [v55 trailingAnchor];
      }

      v66 = v65;
      v154 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1BC4BA7F0;
      v68 = [v58 topAnchor];
      v69 = [v57 topAnchor];
      v70 = [v68 constraintEqualToAnchor_];

      *(v67 + 32) = v70;
      v71 = [v58 bottomAnchor];
      v72 = [v57 bottomAnchor];
      v73 = [v71 constraintEqualToAnchor_];

      *(v67 + 40) = v73;
      v74 = [v58 trailingAnchor];
      v75 = [v74 constraintEqualToAnchor_];

      *(v67 + 48) = v75;
      *(v67 + 56) = v60;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
      v76 = v60;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v154 activateConstraints_];

      v39 = v155;
    }
  }

  if (v39[1] == 1)
  {
    OUTLINED_FUNCTION_13_86();
    [v78 v79];
  }

  if (*v39 == 1)
  {
    OUTLINED_FUNCTION_13_86();
    [v80 v81];
  }

  if (v39[3] == 1)
  {
    OUTLINED_FUNCTION_13_86();
    [v82 v83];
    static Platform.current.getter();
    OUTLINED_FUNCTION_12_102();
    if (!v49)
    {
      OUTLINED_FUNCTION_13_86();
      [v84 v85];
    }
  }

  if (v39[4] == 1)
  {
    OUTLINED_FUNCTION_13_86();
    [v86 v87];
  }

  if (v39[5] == 1)
  {
    OUTLINED_FUNCTION_13_86();
    [v88 v89];
  }

  if (v39[6] == 1)
  {
    OUTLINED_FUNCTION_13_86();
    [v90 v91];
  }

  LocalParticipantControlsView.updateViews()();
  LocalParticipantControlsView.updateControlsAlpha(animated:)(0);
}

Swift::Void __swiftcall LocalParticipantControlsView.layoutViews()()
{
  v2 = *&v0;
  v3 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_69_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v490 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v490 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_32();
  v491 = v16;
  v17 = type metadata accessor for FloatingPointRoundingRule();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17();
  v534 = v19 - v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_32();
  v533 = v22;
  OUTLINED_FUNCTION_13_2();
  v24 = *MEMORY[0x1E69E7D40] & v23;
  v543 = *(v24 + 0x250);
  v544 = v24 + 592;
  v543();
  OUTLINED_FUNCTION_12_102();
  if (v26)
  {
    if (v25)
    {
      static Layout.LocalParticipantViewCameraControls.iOS.getter(v553);
      v27 = *v553;
    }

    else
    {
      static Layout.LocalParticipantViewCameraControls.iOS.getter(v553);
      v27 = *&v553[7];
    }
  }

  else
  {
    static Layout.LocalParticipantViewCameraControls.iOS.getter(v553);
    v27 = *&v553[3];
  }

  v529 = v27;
  OUTLINED_FUNCTION_23_59();
  v28();
  OUTLINED_FUNCTION_12_102();
  if (v26)
  {
    if (v29)
    {
      static Layout.LocalParticipantViewCameraControls.iOS.getter(v554);
      v30 = *v554;
    }

    else
    {
      static Layout.LocalParticipantViewCameraControls.iOS.getter(v554);
      v30 = *&v554[8];
    }
  }

  else
  {
    static Layout.LocalParticipantViewCameraControls.iOS.getter(v554);
    v30 = *&v554[3];
  }

  v528 = v30;
  OUTLINED_FUNCTION_23_59();
  v31();
  OUTLINED_FUNCTION_12_102();
  if (v25)
  {
    static Layout.LocalParticipantViewCameraControls.iOS.getter(v555);
    v33 = v555[9];
  }

  else
  {
    v33 = 0;
    if (v32 == 3)
    {
      static Layout.LocalParticipantViewCameraControls.iOS.getter(v555);
      v33 = v555[11];
    }
  }

  OUTLINED_FUNCTION_23_59();
  v35 = v34();
  v496 = v7;
  v502 = v11;
  v503 = v1;
  v506 = v14;
  v497 = v33;
  switch(v35)
  {
    case 1:
      OUTLINED_FUNCTION_44_23();
      v36 = v0 + 6;
      break;
    case 2:
      OUTLINED_FUNCTION_44_23();
      v36 = v0 + 1;
      break;
    case 3:
      OUTLINED_FUNCTION_44_23();
      v36 = v0 + 2;
      break;
    default:
      OUTLINED_FUNCTION_44_23();
      v36 = v0 + 5;
      break;
  }

  v37 = *v36;
  type metadata accessor for AppUtilities();
  v537 = static AppUtilities.isRTL.getter();
  static Layout.LocalParticipantViewCameraControls.iOS.getter(v556);
  v516 = *&v556[12];
  [v0 bounds];
  Width = CGRectGetWidth(v558);
  v39 = v529;
  v40 = Width - v529 - v37;
  v42 = *(v18 + 104);
  v43 = v533;
  v539 = *MEMORY[0x1E69E7048];
  v41 = v539;
  (v42)(v533, v539, v17);
  v540 = *MEMORY[0x1E69E7040];
  v44 = v534;
  v42(v534);
  v45 = OUTLINED_FUNCTION_6_128();
  v48 = OUTLINED_FUNCTION_26_56(v45, v46, v47, v40, v39);
  v526 = v49;
  v527 = v48;
  v524 = v51;
  v525 = v50;
  v52 = *(v18 + 8);
  v53 = OUTLINED_FUNCTION_339();
  v52(v53);
  v54 = OUTLINED_FUNCTION_20_64();
  v52(v54);
  (v42)(v43, v41, v17);
  v55 = v540;
  (v42)(v44, v540, v17);
  v56 = OUTLINED_FUNCTION_6_128();
  v59 = OUTLINED_FUNCTION_26_56(v56, v57, v58, v39, v39);
  v547 = v60;
  v548 = v59;
  v546 = v61;
  *&v545 = v62;
  v63 = OUTLINED_FUNCTION_339();
  v52(v63);
  v64 = OUTLINED_FUNCTION_20_64();
  v52(v64);
  [v0 bounds];
  Height = CGRectGetHeight(v559);
  v66 = v528;
  v67 = Height - v528 - v37;
  v68 = OUTLINED_FUNCTION_17_75();
  v42(v68);
  (v42)(v44, v55, v17);
  v69 = OUTLINED_FUNCTION_6_128();
  v550.origin.x = OUTLINED_FUNCTION_26_56(v69, v70, v71, v39, v67);
  v550.origin.y = v72;
  v550.size.width = v73;
  v550.size.height = v74;
  v75 = OUTLINED_FUNCTION_339();
  v52(v75);
  v76 = OUTLINED_FUNCTION_20_64();
  v52(v76);
  OUTLINED_FUNCTION_19_57();
  v77 = CGRectGetWidth(v560) - v39 - v37;
  OUTLINED_FUNCTION_19_57();
  v78 = CGRectGetHeight(v561) - v66 - v37;
  v79 = OUTLINED_FUNCTION_17_75();
  v42(v79);
  (v42)(v44, v540, v17);
  v80 = OUTLINED_FUNCTION_6_128();
  v549 = OUTLINED_FUNCTION_26_56(v80, v81, v82, v77, v78);
  v551 = v83;
  v85 = v84;
  v87 = v86;
  v88 = OUTLINED_FUNCTION_339();
  v52(v88);
  v89 = OUTLINED_FUNCTION_20_64();
  v52(v89);
  OUTLINED_FUNCTION_19_57();
  MidX = CGRectGetMidX(v562);
  v521 = v37 * 0.5;
  v91 = MidX - v37 * 0.5;
  OUTLINED_FUNCTION_19_57();
  v92 = CGRectGetHeight(v563) - v66 - v37;
  v93 = OUTLINED_FUNCTION_17_75();
  v42(v93);
  v518 = v42;
  v519 = v18 + 104;
  (v42)(v44, v540, v17);
  v94 = OUTLINED_FUNCTION_6_128();
  v535 = OUTLINED_FUNCTION_26_56(v94, v95, v96, v91, v92);
  v536 = v97;
  v531 = v99;
  v532 = v98;
  v100 = OUTLINED_FUNCTION_339();
  v52(v100);
  v522 = v17;
  v520 = v18 + 8;
  v517 = v52;
  (v52)(v43, v17);
  OUTLINED_FUNCTION_19_57();
  v101 = (CGRectGetWidth(v564) - (v39 + v39) - v37) / 3.0;
  v102 = v39 + v101;
  OUTLINED_FUNCTION_19_57();
  v103 = CGRectGetHeight(v565) - v66 - v37;
  OUTLINED_FUNCTION_19_57();
  v104 = CGRectGetWidth(v566) - v39 - v101 - v37;
  OUTLINED_FUNCTION_19_57();
  CGRectGetHeight(v567);
  v538 = v37;
  OUTLINED_FUNCTION_22_55();
  if (v105)
  {
    v107 = v102;
  }

  else
  {
    v107 = v104;
  }

  if (v105)
  {
    v108 = v103;
  }

  else
  {
    v108 = v106;
  }

  v494 = v108;
  v495 = v107;
  if (v105)
  {
    v109 = v104;
  }

  else
  {
    v109 = v102;
  }

  if (!v105)
  {
    v106 = v103;
  }

  v492 = v106;
  v493 = v109;
  if (v105)
  {
    x = v549;
  }

  else
  {
    x = v550.origin.x;
  }

  v501 = x;
  if (v105)
  {
    y = v551;
  }

  else
  {
    y = v550.origin.y;
  }

  if (v105)
  {
    v112 = v85;
  }

  else
  {
    v112 = v550.size.width;
  }

  if (v105)
  {
    v113 = v87;
  }

  else
  {
    v113 = v550.size.height;
  }

  if (v105)
  {
    v114 = v550.origin.x;
  }

  else
  {
    v114 = v549;
  }

  if (v105)
  {
    v115 = v550.origin.y;
  }

  else
  {
    v115 = v551;
  }

  v541 = v85;
  v542 = v87;
  if (v105)
  {
    v116 = v550.size.width;
  }

  else
  {
    v116 = v85;
  }

  if (v105)
  {
    v87 = v550.size.height;
  }

  if (v105)
  {
    v117 = v548;
  }

  else
  {
    v117 = v527;
  }

  v118 = v526;
  if (v105)
  {
    v118 = *&v547;
  }

  v514 = v118;
  v515 = v117;
  v119 = v525;
  if (v105)
  {
    v119 = v546;
  }

  v546 = v119;
  v120 = v524;
  if (v105)
  {
    v120 = *&v545;
  }

  v513 = v120;
  v552[2] = MEMORY[0x1E69E7CC0];
  v552[1] = MEMORY[0x1E69E7CC0];
  v121 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraFlipButton);
  v122 = [v121 leadingAnchor];
  v123 = [v0 leadingAnchor];
  v124 = [v122 constraintEqualToAnchor:v123 constant:10.0];

  v125 = [v121 bottomAnchor];
  v126 = [*&v2 bottomAnchor];
  v127 = [v125 constraintEqualToAnchor:v126 constant:-10.0];

  *&v547 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd));
  v128 = swift_allocObject();
  v545 = xmmword_1BC4BA930;
  *(v128 + 16) = xmmword_1BC4BA930;
  *(v128 + 32) = v124;
  *(v128 + 40) = v127;
  v129 = v124;
  v530 = v127;
  specialized Array.append<A>(contentsOf:)(v128);
  OUTLINED_FUNCTION_23_59();
  v131 = v130();
  v510 = v121;
  v499 = v112;
  v500 = y;
  v498 = v113;
  v507 = v115;
  v508 = v87;
  v509 = v116;
  if (v131 == 1)
  {
    [v121 setTranslatesAutoresizingMaskIntoConstraints_];
    v132 = [*&v2 subviews];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
    v133 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v557[0] = v121;
    MEMORY[0x1EEE9AC00](v134);
    *(&v490 - 2) = v557;
    LOBYTE(v132) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v490 - 4), v133);
    v490 = 0;

    if ((v132 & 1) == 0)
    {
      [*&v2 addSubview_];
    }

    v135 = OUTLINED_FUNCTION_11_112();
    OUTLINED_FUNCTION_30_40(v135);
    v136 = v530;
    *(v137 + 32) = v129;
    *(v137 + 40) = v136;
    v138 = v129;
    v139 = v136;
    specialized Array.append<A>(contentsOf:)(v135);
  }

  else
  {
    [v121 setFrame_];
    v490 = 0;
  }

  v140 = v538;
  v141 = v531;
  v142 = v532;
  v143 = v535;
  v523 = v129;
  OUTLINED_FUNCTION_34_40();
  v144 += 59;
  v145 = *v144;
  v146 = v144;
  if ((*v144)())
  {
    OUTLINED_FUNCTION_34_40();
    v148 = (*(v147 + 496))();
    [v148 sizeToFit];
  }

  v548 = v2;
  v149 = static Platform.current.getter();
  v150 = COERCE_DOUBLE(&lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>);
  v151 = &off_1E7FE9000;
  v511 = v146;
  v512 = v145;
  if (v149 == 1)
  {
    if (one-time initialization token for shared != -1)
    {
      goto LABEL_426;
    }

    goto LABEL_76;
  }

  v505 = v114;
  v543();
  OUTLINED_FUNCTION_9_105();
  if (v25 || (OUTLINED_FUNCTION_15_67(), OUTLINED_FUNCTION_5_18(), ((*(v161 + 640))() & 1) != 0))
  {
    MaxX = CGRectGetMaxX(v550);
    v568.origin.x = v143;
    v568.origin.y = v536;
    v568.size.width = v142;
    v568.size.height = v141;
    MinX = CGRectGetMinX(v568);
    v164 = v521;
    v165 = (MaxX + MinX) * 0.5 - v521;
    v569.origin.x = OUTLINED_FUNCTION_18_66();
    v569.size.height = v141;
    v166 = v141;
    v167 = CGRectGetMaxX(v569);
    v570.origin.x = v549;
    v570.origin.y = v551;
    v570.size.width = v541;
    v570.size.height = v542;
    v168 = (v167 + CGRectGetMinX(v570)) * 0.5 - v164;
  }

  else
  {
    v169 = v549;
    v571.origin.x = v549;
    v571.origin.y = v551;
    v571.size.width = v541;
    v571.size.height = v542;
    v170 = CGRectGetMinX(v571);
    v172 = v550.origin.x;
    v171 = v550.origin.y;
    v174 = v550.size.width;
    v173 = v550.size.height;
    v175 = v170 - CGRectGetMaxX(v550) - (v140 + v140);
    v166 = v141;
    v176 = v175 / 3.0;
    v572.origin.x = v172;
    v572.origin.y = v171;
    v572.size.width = v174;
    v572.size.height = v173;
    v165 = CGRectGetMaxX(v572) + v176;
    v573.origin.x = v169;
    v573.origin.y = v551;
    v573.size.width = v541;
    v573.size.height = v542;
    v168 = CGRectGetMinX(v573) - v176 - v140;
  }

  v574.origin.x = OUTLINED_FUNCTION_18_66();
  v574.size.height = v166;
  MinY = CGRectGetMinY(v574);
  v121 = v533;
  *&v2 = v539;
  v178 = v522;
  v145 = v518;
  (v518)(v533, v539, v522);
  v179 = v534;
  v180 = OUTLINED_FUNCTION_8_112();
  (v145)(v180);
  v181 = v548;
  v182 = MinY;
  v183 = v538;
  v551 = specialized CGRect.rounded(originRule:sizeRule:toScaleOf:)(v121, v179, *&v548, v165, v182, v538, v538);
  v550.size.width = v185;
  v550.size.height = v184;
  v187 = v186;
  v188 = OUTLINED_FUNCTION_206();
  v189 = v517;
  v517(v188);
  v189(v121, v178);
  v575.origin.x = OUTLINED_FUNCTION_18_66();
  v575.size.height = v166;
  v190 = CGRectGetMinY(v575);
  (v145)(v121, *&v2, v178);
  v191 = OUTLINED_FUNCTION_8_112();
  (v145)(v191);
  v192 = specialized CGRect.rounded(originRule:sizeRule:toScaleOf:)(v121, v179, *&v181, v168, v190, v183, v183);
  v194 = v193;
  v196 = v195;
  v198 = v197;
  v199 = OUTLINED_FUNCTION_206();
  (v189)(v199);
  v189(v121, v178);
  OUTLINED_FUNCTION_13_2();
  v201 = *((*MEMORY[0x1E69E7D40] & v200) + 0x280);
  v202 = v201();
  if ((v202 & 0x1000000000000) != 0)
  {
    OUTLINED_FUNCTION_22_55();
    v205 = v551;
    if (!v203)
    {
      v205 = v192;
    }

    v207 = v550.size.width;
    v206 = v550.size.height;
    if (v203)
    {
      v208 = v187;
    }

    else
    {
      v206 = v194;
      v208 = v196;
    }

    if (!v203)
    {
      v207 = v198;
    }

    v202 = [v204 setFrame_];
  }

  v209 = (v201)(v202);
  v210 = v505;
  if ((v209 & 0x10000000000) != 0)
  {
    OUTLINED_FUNCTION_22_55();
    v213 = v551;
    if (v211)
    {
      v213 = v192;
    }

    v215 = v550.size.width;
    v214 = v550.size.height;
    if (v211)
    {
      v214 = v194;
    }

    if (v211)
    {
      v216 = v196;
    }

    else
    {
      v216 = v187;
    }

    if (v211)
    {
      v215 = v198;
    }

    [v212 setFrame_];
  }

  v217 = objc_opt_self();
  v218 = [v217 currentDevice];
  v219 = [v218 userInterfaceIdiom];

  if (v219)
  {
    v140 = v538;
    v143 = v535;
    v114 = v210;
    goto LABEL_135;
  }

  swift_beginAccess();
  v140 = v538;
  v143 = v535;
  v114 = v210;
  if (static AmbientState.isPresented == 1)
  {
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      OUTLINED_FUNCTION_15_67();
      OUTLINED_FUNCTION_5_18();
      v121 = (*(v220 + 616))();
      v221 = [v121 view];

      if (v221)
      {
        v543();
        OUTLINED_FUNCTION_9_105();
        if (v25)
        {
          v222 = [v217 currentDevice];
          v223 = [v222 userInterfaceIdiom];

          if (!v223 && static AmbientState.isPresented == 1 && (Features.isICUIRedesignEnabled.getter() & 1) != 0)
          {
            OUTLINED_FUNCTION_15_67();
            OUTLINED_FUNCTION_5_18();
            v225 = v491;
            (*(v224 + 712))();
            v226 = *(v225 + 9);
            OUTLINED_FUNCTION_0_229();
            outlined destroy of UIFontTextStyle(v225, v227);
            v228 = v226 ^ 1;
          }

          else
          {
            v228 = 0;
          }
        }

        else
        {
          v228 = 1;
        }

        [v221 setHidden_];

        goto LABEL_135;
      }

      goto LABEL_430;
    }
  }

LABEL_135:
  while (2)
  {
    while (2)
    {
      v229 = COERCE_DOUBLE(&selRef_isRecordingAllowed);
      v230 = v548;
      v231 = [*&v548 superview];
      if (v231)
      {
        v232 = v231;
        [v231 bounds];
        OUTLINED_FUNCTION_31_41();
      }

      else
      {
        [*&v230 bounds];
        OUTLINED_FUNCTION_31_41();
      }

      v576.origin.x = OUTLINED_FUNCTION_4_154();
      v233 = CGRectGetHeight(v576);
      [*&v230 bounds];
      v577.origin.x = OUTLINED_FUNCTION_4_154();
      v578 = CGRectIntersection(v577, v589);
      v521 = v233 - CGRectGetHeight(v578);
      v234 = *MEMORY[0x1E69E7D40] & **&v230;
      v504 = *(v234 + 0x190);
      *&v505 = v234 + 400;
      v235 = v504();
      v236 = v536;
      if (v235)
      {
        v237 = v235;
        v238 = [v237 superview];
        if (v238)
        {

          v239 = swift_allocObject();
          *(v239 + 16) = xmmword_1BC4BA7F0;
          v240 = [v237 leadingAnchor];
          v241 = [*&v230 leadingAnchor];
          v145 = 0x1E7FE9000;
          v242 = OUTLINED_FUNCTION_24_59();

          *(v239 + 32) = v242;
          v243 = [v237 trailingAnchor];
          v244 = [*&v230 trailingAnchor];
          v245 = OUTLINED_FUNCTION_24_59();

          *(v239 + 40) = v245;
          v246 = [v237 topAnchor];
          v247 = [*&v230 topAnchor];
          v248 = OUTLINED_FUNCTION_24_59();

          *(v239 + 48) = v248;
          v249 = [v237 bottomAnchor];

          v250 = [*&v230 bottomAnchor];
          v2 = COERCE_DOUBLE([v249 constraintEqualToAnchor:v250 constant:v521]);

          *(v239 + 56) = v2;
          specialized Array.append<A>(contentsOf:)(v239);
        }

        else
        {
        }
      }

      v251 = *((*MEMORY[0x1E69E7D40] & **&v230) + 0x3A8);
      v252 = (*MEMORY[0x1E69E7D40] & **&v230) + 936;
      v253 = v251();
      v254 = specialized Array.count.getter(v253);

      if (v254)
      {
        v256 = (v251)(v255);
        specialized Array.append<A>(contentsOf:)(v256);
        v257 = [*(*&v230 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraFlipButtonWithText) superview];
        if (v257)
        {

          v258 = v251();
        }

        else
        {
          v150 = v230;
          v151 = v251();
          v557[0] = MEMORY[0x1E69E7CC0];
          specialized Array.count.getter(v151);
          OUTLINED_FUNCTION_33_44();
          while (v251 != v252)
          {
            if (v230 == 0.0)
            {
              if (v252 >= v121[2])
              {
                goto LABEL_411;
              }

              *&v259 = *(v151 + 8 * v252 + 32);
            }

            else
            {
              v262 = OUTLINED_FUNCTION_206();
              v259 = COERCE_DOUBLE(MEMORY[0x1BFB22010](v262));
            }

            v2 = v259;
            if (__OFADD__(v252, 1))
            {
              goto LABEL_410;
            }

            outlined bridged method (pb) of @objc NSLayoutConstraint.identifier.getter(*&v259);
            if (v260 == 0.0)
            {
              v150 = -2.68156159e154;
            }

            else
            {
              v150 = v260;
            }

            v261._object = 0x80000001BC4F7A70;
            v261._countAndFlagsBits = 0xD000000000000010;
            v145 = String.hasPrefix(_:)(v261);

            if (v145)
            {
            }

            else
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v145 = *(v557[0] + 16);
              OUTLINED_FUNCTION_40_26();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              OUTLINED_FUNCTION_40_26();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v150 = COERCE_DOUBLE(v557);
              specialized ContiguousArray._endMutation()();
            }

            ++v252;
          }

          v258 = v557[0];
          v230 = v548;
          v229 = COERCE_DOUBLE(&selRef_isRecordingAllowed);
        }

        v255 = specialized Array.append<A>(contentsOf:)(v258);
      }

      (v543)(v255);
      OUTLINED_FUNCTION_9_105();
      if (!v25)
      {
        v265 = [*(*&v230 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraBlurButton) setFrame_];
        v266 = (*((*MEMORY[0x1E69E7D40] & **&v230) + 0x280))(v265);
        if (v266)
        {
          v267 = *(*&v230 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cinematicFramingButton);
          v268 = sel_setFrame_;
          v269 = v143;
          v270 = v236;
          v272 = v531;
          v271 = v532;
          goto LABEL_168;
        }

LABEL_367:
        v429 = objc_opt_self();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v429 deactivateConstraints_];

        v431.super.isa = Array._bridgeToObjectiveC()().super.isa;

        [v429 activateConstraints_];

        v432 = v530;
        goto LABEL_368;
      }

      if (v512())
      {
        v263 = OUTLINED_FUNCTION_11_112();
        *(v263 + 16) = v545;
        *(v263 + 32) = (*((*MEMORY[0x1E69E7D40] & **&v230) + 0x1F0))();
        v264 = (v263 + 40);
      }

      else
      {
        v263 = swift_allocObject();
        *(v263 + 16) = xmmword_1BC4BAC30;
        v264 = (v263 + 32);
      }

      v273 = v516;
      v274 = *(*&v230 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_videoPauseButton);
      *v264 = v274;
      v275 = v274;
      v557[0] = MEMORY[0x1E69E7CC0];
      specialized Array.count.getter(v263);
      OUTLINED_FUNCTION_33_44();
      while (v251 != v252)
      {
        if (v230 == 0.0)
        {
          if (v252 >= v121[2])
          {
            goto LABEL_388;
          }

          *&v276 = *(v263 + 8 * v252 + 32);
        }

        else
        {
          v278 = OUTLINED_FUNCTION_206();
          v276 = COERCE_DOUBLE(MEMORY[0x1BFB22010](v278));
        }

        v2 = v276;
        if (__OFADD__(v252, 1))
        {
          __break(1u);
LABEL_388:
          __break(1u);
LABEL_389:
          __break(1u);
LABEL_390:
          __break(1u);
LABEL_391:
          __break(1u);
LABEL_392:
          __break(1u);
LABEL_393:
          __break(1u);
LABEL_394:
          __break(1u);
LABEL_395:
          __break(1u);
LABEL_396:
          __break(1u);
LABEL_397:
          __break(1u);
LABEL_398:
          __break(1u);
LABEL_399:
          __break(1u);
LABEL_400:
          __break(1u);
LABEL_401:
          __break(1u);
LABEL_402:
          v485 = (v145)();
          if (!v485 || (v486 = v485, v151 = [v485 superview], v486, !v151))
          {
            OUTLINED_FUNCTION_34_40();
            v151 = v491;
            (*(v487 + 712))();
            v488 = *(v151 + 7);
            OUTLINED_FUNCTION_0_229();
            outlined destroy of UIFontTextStyle(v151, v489);
            if (v488 <= 9 && ((1 << v488) & 0x207) != 0)
            {

              LocalParticipantControlsView.layoutStagingButtons(topRightCornerFrame:)(v527, v526, v525, v524);
              v432 = v523;
              v431.super.isa = v530;
LABEL_368:

              return;
            }

LABEL_298:
            v550.size.width = *(*&v2 + **&v230);
            [*&v550.size.width setFrame_];
            v579.origin.x = OUTLINED_FUNCTION_4_154();
            v348 = CGRectGetHeight(v579);
            v580.origin.x = OUTLINED_FUNCTION_4_154();
            v150 = 0.0;
            v349 = v348 + CGRectGetHeight(v580) * -0.94;
            v350 = v536;
            *&v145 = MEMORY[0x1E69E7CC0];
            v351 = -(v349 - v521);
            v352 = v531;
            v353 = v532;
            v121 = *&v548;
            while (2)
            {
              if (*&v551 == *&v150)
              {

                specialized Array.append<A>(contentsOf:)(v145);
                v366 = v548;
                OUTLINED_FUNCTION_13_2();
                v368 = *((*MEMORY[0x1E69E7D40] & v367) + 0x2C8);
                v369 = v502;
                v368();
                v370 = *(v369 + 7);
                OUTLINED_FUNCTION_0_229();
                outlined destroy of UIFontTextStyle(v369, v371);
                if (VideoMessageController.State.rawValue.getter(v370) == 0x7964616572 && v372 == 0xE500000000000000)
                {

                  v376 = v508;
                  v375 = v509;
                }

                else
                {
                  v374 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v376 = v508;
                  v375 = v509;
                  if ((v374 & 1) == 0)
                  {
                    v377 = *(*&v366 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraBlurButton);
                    [v377 setFrame_];
LABEL_344:
                    v398 = v510;
                    v400 = v500;
                    v399 = v501;
                    v402 = v498;
                    v401 = v499;
                    OUTLINED_FUNCTION_5_18();
                    if (((*(v403 + 640))() & 1) != 0 && [*(*&v366 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_tuFeatures) scEnabled])
                    {
                      [*(*&v366 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cinematicFramingButton) setFrame_];
                      [v377 setFrame_];
                    }

                    v404 = v398;
                    v405 = [v398 setFrame_];
                    v406 = v503;
                    (v368)(v405);
                    v407 = *(v406 + 7);
                    OUTLINED_FUNCTION_0_229();
                    outlined destroy of UIFontTextStyle(v406, v408);
                    if (VideoMessageController.State.rawValue.getter(v407) == 0x7964616572 && v409 == 0xE500000000000000)
                    {
                      goto LABEL_358;
                    }

                    v411 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    v412 = *&v404;
                    if (v411)
                    {
                      goto LABEL_359;
                    }

                    OUTLINED_FUNCTION_38_41();
                    v413 = v496;
                    v368();
                    v414 = *(v413 + 7);
                    OUTLINED_FUNCTION_0_229();
                    outlined destroy of UIFontTextStyle(v413, v415);
                    if (VideoMessageController.State.rawValue.getter(v414) == v404 && v416 == 0xEF676E6964726F63)
                    {
LABEL_358:

                      v412 = *&v404;
                      goto LABEL_359;
                    }

                    v418 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    v412 = *&v404;
                    if ((v418 & 1) == 0)
                    {
                      goto LABEL_367;
                    }

LABEL_359:
                    v419 = swift_allocObject();
                    v420 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSo9UIControlC_Tt1g5(v419, 3);
                    *v421 = v377;
                    *(v421 + 8) = v412;
                    v422 = v550.size.width;
                    *(v421 + 16) = v550.size.width;
                    v150 = v412;
                    *&v2 = v420 & 0xC000000000000001;
                    v145 = v420 & 0xFFFFFFFFFFFFFF8;
                    v423 = v377;
                    v424 = *&v150;
                    v425 = *&v422;
                    v151 = 0;
                    v121 = &selRef_isRecordingAllowed;
                    while (v151 != 3)
                    {
                      if (v2 == 0.0)
                      {
                        if (v151 >= *((v420 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_423;
                        }

                        v426 = *(v420 + 8 * v151 + 32);
                      }

                      else
                      {
                        v426 = MEMORY[0x1BFB22010](v151, v420);
                      }

                      v427 = v426;
                      ++v151;
                      OUTLINED_FUNCTION_15_67();
                      OUTLINED_FUNCTION_5_18();
                      v150 = COERCE_DOUBLE((*(v428 + 496))());
                      [*&v150 center];

                      [v427 center];
                      [v427 setCenter_];
                    }

LABEL_366:

                    goto LABEL_367;
                  }
                }

                v377 = *(*&v366 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraBlurButton);
                [v377 setFrame_];
                goto LABEL_344;
              }

              if (*&v550.size.height)
              {
                OUTLINED_FUNCTION_46_29();
              }

              else
              {
                OUTLINED_FUNCTION_32_35();
                if (v26)
                {
                  goto LABEL_418;
                }

                v354 = *(*&v229 + 8 * *&v150 + 32);
              }

              v355 = v354;
              if (__OFADD__(*&v150, 1))
              {
                goto LABEL_417;
              }

              v356 = OUTLINED_FUNCTION_11_112();
              v357 = [v355 bottomAnchor];
              v358 = [v121 bottomAnchor];
              v359 = [v357 constraintEqualToAnchor:v358 constant:v351];

              *(v356 + 32) = v359;
              v360 = [v355 centerXAnchor];
              v361 = [v121 centerXAnchor];
              v2 = COERCE_DOUBLE([v360 constraintEqualToAnchor_]);

              *(v356 + 40) = v2;
              v151 = v145 >> 62;
              if (v145 >> 62)
              {
                v362 = OUTLINED_FUNCTION_45_32();
              }

              else
              {
                v362 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v229 = v549;
              v363 = v362 + 2;
              if (__OFADD__(v362, 2))
              {
                goto LABEL_419;
              }

              if (swift_isUniquelyReferenced_nonNull_bridgeObject())
              {
                if (!v151)
                {
                  v151 = v145 & 0xFFFFFFFFFFFFFF8;
                  if (v363 > *((v145 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
LABEL_313:
                    *&v145 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)());
                    v151 = v145 & 0xFFFFFFFFFFFFFF8;
                  }

                  OUTLINED_FUNCTION_35_34();
                  if (v336 != v281)
                  {
                    goto LABEL_420;
                  }

                  *&v2 = v356 & 0xFFFFFFFFFFFFFF8;
                  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
                  swift_arrayInitWithCopy();

                  v364 = *(v151 + 16);
                  v281 = __OFADD__(v364, 2);
                  v365 = v364 + 2;
                  if (v281)
                  {
                    goto LABEL_421;
                  }

                  *(v151 + 16) = v365;
                  ++*&v150;
                  continue;
                }
              }

              else if (!v151)
              {
                goto LABEL_313;
              }

              break;
            }

            OUTLINED_FUNCTION_45_32();
            OUTLINED_FUNCTION_33_5();
            goto LABEL_313;
          }

LABEL_297:

          goto LABEL_298;
        }

        v277 = [*&v276 superview];
        if (v277)
        {

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v145 = *(v557[0] + 16);
          OUTLINED_FUNCTION_40_26();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          OUTLINED_FUNCTION_40_26();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v252;
      }

      v229 = *v557;
      v551 = COERCE_DOUBLE(specialized Array.count.getter(v557[0]));
      v150 = 0.0;
      *&v550.size.height = *&v229 & 0xC000000000000001;
      v121 = (*&v229 + 32);
      *&v550.size.width = MEMORY[0x1E69E7CC0];
      v549 = v229;
      *&v542 = *&v229 + 32;
      while (*&v150 != *&v551)
      {
        if (*&v550.size.height)
        {
          OUTLINED_FUNCTION_46_29();
        }

        else
        {
          OUTLINED_FUNCTION_32_35();
          if (v26)
          {
            goto LABEL_390;
          }

          v279 = v121[*&v150];
        }

        v280 = v279;
        v281 = __OFADD__(*&v150, 1);
        *&v282 = *&v150 + 1;
        if (v281)
        {
          goto LABEL_389;
        }

        v283 = [v279 constraints];
        v230 = COERCE_DOUBLE(type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint));
        *&v145 = COERCE_DOUBLE(static Array._unconditionallyBridgeFromObjectiveC(_:)());

        v550.origin.y = v282;
        if (v145 >> 62)
        {
          v284 = OUTLINED_FUNCTION_45_32();
        }

        else
        {
          v284 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v2 = v550.size.width;
        v285 = *&v550.size.width >> 62;
        if (*&v550.size.width >> 62)
        {
          v286 = __CocoaSet.count.getter();
        }

        else
        {
          v286 = *((*&v550.size.width & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *&v550.origin.x = v284;
        v281 = __OFADD__(v286, v284);
        v287 = v286 + v284;
        if (v281)
        {
          goto LABEL_391;
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (v285)
          {
LABEL_197:
            __CocoaSet.count.getter();
            OUTLINED_FUNCTION_33_5();
          }

LABEL_198:
          v2 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)());
          v288 = *&v2 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_199;
        }

        if (v285)
        {
          goto LABEL_197;
        }

        v288 = *&v2 & 0xFFFFFFFFFFFFFF8;
        if (v287 > *((*&v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_198;
        }

LABEL_199:
        v550.size.width = v2;
        v289 = *(v288 + 16);
        v290 = (*(v288 + 24) >> 1) - v289;
        *&v150 = v288 + 8 * v289;
        v546 = *&v288;
        if (v145 >> 62)
        {
          if ((v145 & 0x8000000000000000) != 0)
          {
            v151 = v145;
          }

          else
          {
            v151 = v145 & 0xFFFFFFFFFFFFFF8;
          }

          *&v291 = COERCE_DOUBLE(__CocoaSet.count.getter());
          if (*&v291 == 0.0)
          {
            goto LABEL_216;
          }

          v230 = *&v291;
          *&v292 = COERCE_DOUBLE(__CocoaSet.count.getter());
          if (v290 < v292)
          {
            goto LABEL_415;
          }

          if (*&v230 < 1)
          {
            goto LABEL_416;
          }

          v541 = *&v292;
          v293 = *&v150 + 32;
          lazy protocol witness table accessor for type [NSLayoutConstraint] and conformance [A]();
          v294 = 0;
          v2 = *&v145;
          do
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18NSLayoutConstraintCGMd);
            v295 = specialized protocol witness for Collection.subscript.read in conformance [A](v557, v294, v145);
            v297 = *v296;
            v298 = OUTLINED_FUNCTION_39_27();
            v295(v298);
            *(v293 + 8 * v294++) = v121;
          }

          while (*&v230 != v294);
          v229 = v549;
          v151 = *&v541;
          v121 = *&v542;
LABEL_212:

          v150 = v550.origin.y;
          if (v151 < *&v550.origin.x)
          {
            goto LABEL_392;
          }

          if (v151 > 0)
          {
            v299 = *(*&v546 + 16);
            v281 = __OFADD__(v299, v151);
            v300 = v299 + v151;
            if (v281)
            {
              goto LABEL_412;
            }

            *(*&v546 + 16) = v300;
          }
        }

        else
        {
          v151 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v151)
          {
            if (v290 < v151)
            {
              goto LABEL_414;
            }

            swift_arrayInitWithCopy();
            goto LABEL_212;
          }

LABEL_216:

          v150 = v550.origin.y;
          if (*&v550.origin.x > 0)
          {
            goto LABEL_392;
          }
        }
      }

      specialized Array.append<A>(contentsOf:)(*&v550.size.width);
      v150 = 0.0;
      v230 = MEMORY[0x1E69E7CC0];
      while (*&v150 != *&v551)
      {
        if (*&v550.size.height)
        {
          OUTLINED_FUNCTION_46_29();
        }

        else
        {
          OUTLINED_FUNCTION_32_35();
          if (v26)
          {
            goto LABEL_394;
          }

          v301 = v121[*&v150];
        }

        v302 = v301;
        v281 = __OFADD__(*&v150, 1);
        *&v303 = *&v150 + 1;
        if (v281)
        {
          goto LABEL_393;
        }

        v304 = [v301 constraints];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
        *&v145 = COERCE_DOUBLE(static Array._unconditionallyBridgeFromObjectiveC(_:)());

        v550.size.width = v303;
        if (v145 >> 62)
        {
          v305 = OUTLINED_FUNCTION_45_32();
        }

        else
        {
          v305 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v306 = *&v230 >> 62;
        if (*&v230 >> 62)
        {
          OUTLINED_FUNCTION_41_31(*&v230 & 0xFFFFFFFFFFFFFF8);
          v323 = v322;
          v307 = __CocoaSet.count.getter();
          v305 = v323;
        }

        else
        {
          v307 = *((*&v230 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *&v2 = v307 + v305;
        if (__OFADD__(v307, v305))
        {
          goto LABEL_395;
        }

        *&v550.origin.y = v305;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (v306)
          {
LABEL_238:
            OUTLINED_FUNCTION_41_31(*&v230 & 0xFFFFFFFFFFFFFF8);
            __CocoaSet.count.getter();
            OUTLINED_FUNCTION_33_5();
          }

LABEL_239:
          *&v550.origin.x = OUTLINED_FUNCTION_43_32();
          v308 = *&v550.origin.x & 0xFFFFFFFFFFFFFF8;
          goto LABEL_240;
        }

        if (v306)
        {
          goto LABEL_238;
        }

        v308 = *&v230 & 0xFFFFFFFFFFFFFF8;
        if (*&v2 > *((*&v230 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_239;
        }

        v550.origin.x = v230;
LABEL_240:
        v309 = *(v308 + 16);
        v310 = (*(v308 + 24) >> 1) - v309;
        *&v150 = v308 + 8 * v309;
        v546 = *&v308;
        if (v145 >> 62)
        {
          if ((v145 & 0x8000000000000000) != 0)
          {
            v151 = v145;
          }

          else
          {
            v151 = v145 & 0xFFFFFFFFFFFFFF8;
          }

          v311 = __CocoaSet.count.getter();
          if (!v311)
          {
            goto LABEL_257;
          }

          v312 = v311;
          *&v313 = COERCE_DOUBLE(__CocoaSet.count.getter());
          if (v310 < v313)
          {
LABEL_407:
            __break(1u);
LABEL_408:
            __break(1u);
LABEL_409:
            __break(1u);
LABEL_410:
            __break(1u);
LABEL_411:
            __break(1u);
LABEL_412:
            __break(1u);
LABEL_413:
            __break(1u);
LABEL_414:
            __break(1u);
LABEL_415:
            __break(1u);
LABEL_416:
            __break(1u);
LABEL_417:
            __break(1u);
LABEL_418:
            __break(1u);
LABEL_419:
            __break(1u);
LABEL_420:
            __break(1u);
LABEL_421:
            __break(1u);
LABEL_422:
            __break(1u);
LABEL_423:
            __break(1u);
            goto LABEL_424;
          }

          if (v312 < 1)
          {
            goto LABEL_422;
          }

          v541 = *&v313;
          v314 = *&v150 + 32;
          lazy protocol witness table accessor for type [NSLayoutConstraint] and conformance [A]();
          v315 = 0;
          v2 = *&v145;
          do
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18NSLayoutConstraintCGMd);
            v316 = specialized protocol witness for Collection.subscript.read in conformance [A](v557, v315, v145);
            v318 = *v317;
            v319 = OUTLINED_FUNCTION_39_27();
            v316(v319);
            *(v314 + 8 * v315++) = v121;
          }

          while (v312 != v315);
          v229 = v549;
          v151 = *&v541;
          v121 = *&v542;
LABEL_253:

          v230 = v550.origin.x;
          v150 = v550.size.width;
          if (v151 < *&v550.origin.y)
          {
            goto LABEL_396;
          }

          if (v151 > 0)
          {
            v320 = *(*&v546 + 16);
            v281 = __OFADD__(v320, v151);
            v321 = v320 + v151;
            if (v281)
            {
              goto LABEL_413;
            }

            *(*&v546 + 16) = v321;
          }
        }

        else
        {
          v151 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v151)
          {
            if (v310 < v151)
            {
              goto LABEL_407;
            }

            swift_arrayInitWithCopy();
            goto LABEL_253;
          }

LABEL_257:

          v230 = v550.origin.x;
          v150 = v550.size.width;
          if (*&v550.origin.y > 0)
          {
            goto LABEL_396;
          }
        }
      }

      specialized Array.append<A>(contentsOf:)(*&v230);
      v324 = 0;
      v230 = MEMORY[0x1E69E7CC0];
      *&v145 = COERCE_DOUBLE(0x1E696ACD8uLL);
      while (*&v551 != v324)
      {
        if (*&v550.size.height)
        {
          OUTLINED_FUNCTION_46_29();
        }

        else
        {
          OUTLINED_FUNCTION_32_35();
          if (v26)
          {
            goto LABEL_398;
          }

          v325 = *(*&v229 + 8 * v324 + 32);
        }

        v2 = *&v325;
        if (__OFADD__(v324, 1))
        {
          goto LABEL_397;
        }

        v326 = OUTLINED_FUNCTION_11_112();
        v327 = [*&v2 widthAnchor];
        v328 = [v327 constraintEqualToConstant_];

        v326[2].n128_u64[0] = v328;
        v329 = [*&v2 heightAnchor];
        v330 = [*&v2 widthAnchor];
        v331 = [v329 constraintEqualToAnchor_];

        v326[2].n128_u64[1] = v331;
        v332 = *&v230 >> 62;
        if (*&v230 >> 62)
        {
          OUTLINED_FUNCTION_41_31(*&v230 & 0xFFFFFFFFFFFFFF8);
          v333 = __CocoaSet.count.getter();
        }

        else
        {
          v333 = *((*&v230 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *&v2 = v333 + 2;
        v229 = v549;
        if (__OFADD__(v333, 2))
        {
          goto LABEL_399;
        }

        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (!v332)
          {
            v334 = *&v230 & 0xFFFFFFFFFFFFFF8;
            if (*&v2 <= *((*&v230 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_278;
            }

            goto LABEL_277;
          }

LABEL_276:
          OUTLINED_FUNCTION_41_31(*&v230 & 0xFFFFFFFFFFFFFF8);
          __CocoaSet.count.getter();
          OUTLINED_FUNCTION_33_5();
          goto LABEL_277;
        }

        if (v332)
        {
          goto LABEL_276;
        }

LABEL_277:
        v230 = COERCE_DOUBLE(OUTLINED_FUNCTION_43_32());
        v334 = *&v230 & 0xFFFFFFFFFFFFFF8;
LABEL_278:
        OUTLINED_FUNCTION_35_34();
        if (v336 != v281)
        {
          goto LABEL_400;
        }

        *&v2 = v334 + 8 * v335;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
        swift_arrayInitWithCopy();

        v337 = *(v334 + 16);
        v281 = __OFADD__(v337, 2);
        v338 = v337 + 2;
        if (v281)
        {
          goto LABEL_401;
        }

        *(v334 + 16) = v338;
        ++v324;
      }

      specialized Array.append<A>(contentsOf:)(*&v230);
      if (static Platform.current.getter() != 1)
      {
        swift_beginAccess();
        v230 = COERCE_DOUBLE(&OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_effectsButton);
        v2 = v548;
        v151 = v522;
        v145 = v504;
        if (static AmbientState.isPresented == 1)
        {
          if (one-time initialization token for shared != -1)
          {
            goto LABEL_428;
          }

          goto LABEL_288;
        }

LABEL_289:
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
        {
          goto LABEL_298;
        }

        OUTLINED_FUNCTION_23_59();
        v345();
        OUTLINED_FUNCTION_9_105();
        if (!v25)
        {
          goto LABEL_298;
        }

        v346 = [objc_opt_self() currentDevice];
        v151 = [v346 userInterfaceIdiom];

        if (v151)
        {
          goto LABEL_298;
        }

        v347 = (v145)();
        if (!v347)
        {
          goto LABEL_402;
        }

        v151 = v347;
        goto LABEL_297;
      }

      v151 = *&v548;
      v339 = LocalParticipantControlsView.generateIPadSupportedButtons()();
      [v151 bounds];
      if (v537)
      {
        v344 = v529 + CGRectGetMinX(*&v340);
      }

      else
      {
        v344 = CGRectGetMaxX(*&v340) - v529 - v140;
      }

      [v151 bounds];
      MaxY = CGRectGetMaxY(v581);
      v379 = specialized Array.count.getter(v339);
      if (v379)
      {
        v380 = v379;
        if (v379 >= 1)
        {
          v381 = 0;
          v382 = MaxY - v528 - v140;
          v145 = v339 & 0xC000000000000001;
          OUTLINED_FUNCTION_22_55();
          if (v25)
          {
            v385 = v384;
          }

          else
          {
            v385 = v383;
          }

          do
          {
            if (*&v145 == 0.0)
            {
              v386 = *(v339 + 8 * v381 + 32);
            }

            else
            {
              v386 = MEMORY[0x1BFB22010](v381, v339);
            }

            ++v381;
            v387 = v386;
            v2 = COERCE_DOUBLE([*&v548 traitCollection]);
            [*&v2 displayScale];
            v389 = v388;

            v390 = ceil(v140 * v389) / v389;
            [v387 setFrame_];

            v344 = v385 + v344;
          }

          while (v380 != v381);
          goto LABEL_335;
        }

        __break(1u);
LABEL_428:
        OUTLINED_FUNCTION_0();
LABEL_288:
        if (Features.isICUIRedesignEnabled.getter())
        {
          goto LABEL_289;
        }

        TUDeviceHasHomeButton();
        [*&v2 bounds];
        CGRectGetWidth(v582);
        [*&v2 bounds];
        CGRectGetHeight(v583);
        v433 = v533;
        v434 = v539;
        v435 = v518;
        (v518)(v533, v539, v151);
        v436 = OUTLINED_FUNCTION_8_112();
        v435(v436);
        OUTLINED_FUNCTION_29_43();
        v551 = specialized CGRect.rounded(originRule:sizeRule:toScaleOf:)(v437, v438, v439, v440, v441, v442, v443);
        v550.size.height = v444;
        v446 = v445;
        v448 = v447;
        v449 = OUTLINED_FUNCTION_206();
        v450 = v517;
        v517(v449);
        v450(v433, v151);
        [*&v2 bounds];
        CGRectGetHeight(v584);
        (v435)(v433, v434, v151);
        v451 = OUTLINED_FUNCTION_8_112();
        v435(v451);
        OUTLINED_FUNCTION_29_43();
        v459 = specialized CGRect.rounded(originRule:sizeRule:toScaleOf:)(v452, v453, v454, v455, v456, v457, v458);
        v461 = v460;
        v463 = v462;
        v465 = v464;
        v466 = OUTLINED_FUNCTION_206();
        (v450)(v466);
        v450(v433, v151);
        OUTLINED_FUNCTION_22_55();
        v468 = v551;
        if (!v467)
        {
          v468 = v459;
        }

        v469 = v550.size.height;
        if (v467)
        {
          v470 = v446;
        }

        else
        {
          v469 = v461;
          v470 = v463;
        }

        if (v467)
        {
          v471 = v448;
        }

        else
        {
          v471 = v465;
        }

        v472 = v510;
        [v510 setFrame_];
        v473 = *(*&v2 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraBlurButton);
        [v472 frame];
        CGRectGetMinX(v585);
        [v472 frame];
        CGRectGetMinY(v586);
        OUTLINED_FUNCTION_29_43();
        [v474 v475];
        [v473 frame];
        CGRectGetMinX(v587);
        [v473 frame];
        CGRectGetMinY(v588);
        OUTLINED_FUNCTION_29_43();
LABEL_168:
        [v267 v268];
        goto LABEL_367;
      }

LABEL_335:

      OUTLINED_FUNCTION_15_67();
      OUTLINED_FUNCTION_5_18();
      v392 = v506;
      (*(v391 + 712))();
      v393 = *(v392 + 7);
      OUTLINED_FUNCTION_0_229();
      outlined destroy of UIFontTextStyle(v392, v394);
      v395 = VideoMessageController.State.rawValue.getter(v393);
      v150 = v396;
      if (v395 == 0x7964616552746F6ELL && *&v396 == 0xE800000000000000)
      {

        goto LABEL_366;
      }

      v151 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v151)
      {

        goto LABEL_367;
      }

      v476 = 0;
      v552[0] = MEMORY[0x1E69E7CC0];
      v477 = v521 * 0.5;
      v121 = *&v548;
      while (1)
      {
        if (*&v551 == v476)
        {

          specialized Array.append<A>(contentsOf:)(v552[0]);
          goto LABEL_367;
        }

        if (*&v550.size.height)
        {
          v478 = COERCE_DOUBLE(MEMORY[0x1BFB22010](v476, *&v229));
        }

        else
        {
          if (v476 >= *(*&v229 + 16))
          {
            goto LABEL_425;
          }

          *&v478 = *(*&v229 + 8 * v476 + 32);
        }

        v150 = v478;
        if (__OFADD__(v476, 1))
        {
          break;
        }

        v479 = OUTLINED_FUNCTION_11_112();
        v480 = [*&v150 trailingAnchor];
        v481 = [v121 trailingAnchor];
        Layout.LocalParticipantViewCameraControls.init()(v557);
        v482 = *&v557[7];
        v483 = [objc_opt_self() currentDevice];
        [v483 userInterfaceIdiom];

        v484 = [v480 constraintEqualToAnchor:v481 constant:-v482];
        v479[2].n128_u64[0] = v484;
        v151 = [*&v150 centerYAnchor];
        v2 = COERCE_DOUBLE([v121 centerYAnchor]);
        v229 = v549;
        *&v145 = COERCE_DOUBLE([v151 constraintEqualToAnchor:*&v2 constant:v477]);

        v479[2].n128_f64[1] = *&v145;
        v150 = COERCE_DOUBLE(v552);
        specialized Array.append<A>(contentsOf:)(v479);
        ++v476;
      }

LABEL_424:
      __break(1u);
LABEL_425:
      __break(1u);
LABEL_426:
      OUTLINED_FUNCTION_0();
LABEL_76:
      v150 = *(*&v150 + 3056);
      if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
      {
        continue;
      }

      break;
    }

    OUTLINED_FUNCTION_15_67();
    OUTLINED_FUNCTION_5_18();
    v153 = (*(v152 + 616))();
    v154 = [v153 *(v151 + 3792)];

    if (v154)
    {
      v543();
      OUTLINED_FUNCTION_9_105();
      if (v25)
      {
        v155 = 0;
      }

      else
      {
        v155 = 1;
      }

      [v154 setHidden_];

      v151 = LocalParticipantControlsView.generateIPadSupportedButtons()();
      v156 = specialized Array.count.getter(v151);
      v157 = 0;
      v121 = (v151 & 0xC000000000000001);
      while (v156 != v157)
      {
        if (v121)
        {
          v160 = OUTLINED_FUNCTION_206();
          v158 = COERCE_DOUBLE(MEMORY[0x1BFB22010](v160));
        }

        else
        {
          if (v157 >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_409;
          }

          *&v158 = *(v151 + 8 * v157 + 32);
        }

        v2 = v158;
        if (__OFADD__(v157, 1))
        {
          goto LABEL_408;
        }

        v150 = v548;
        v543();
        OUTLINED_FUNCTION_9_105();
        if (v25)
        {
          v159 = 1;
        }

        else
        {
          v159 = 0;
        }

        [*&v2 setHidden_];

        ++v157;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_430:
  __break(1u);
}